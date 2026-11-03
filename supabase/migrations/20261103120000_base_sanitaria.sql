-- SanitaCRM — Fase 1: base de consulta sanitária
-- Rode este arquivo UMA vez no Supabase (SQL Editor) antes do seed.sql.
-- Não mexe nas tabelas do CRM (contact, deal, pipeline_stage...).

-- Atividades econômicas (CNAE subclasse), ex.: 8630-5/03
create table if not exists public.cnae (
  codigo      text primary key check (codigo ~ '^\d{4}-\d/\d{2}$'),
  codigo_num  text generated always as (regexp_replace(codigo, '\D', '', 'g')) stored unique,
  descricao   text not null
);

-- Normas: RDCs (Anvisa), Portarias CVS (SP), regras municipais, normas técnicas
create table if not exists public.norma (
  id               bigint generated always as identity primary key,
  sigla            text not null unique,           -- ex.: 'RDC 50/2002', 'Portaria CVS 01/2024'
  titulo           text,
  esfera           text not null check (esfera in ('federal', 'estadual', 'municipal', 'tecnica')),
  orgao            text,
  url              text,
  vigencia_status  text not null default 'conferir'
                   check (vigencia_status in ('vigente', 'revogada', 'conferir')),
  vigencia_conferida_em date
);

-- Legenda oficial dos documentos (Portaria CVS 1/2024, Anexo IV, Quadros 9 e 10)
-- fase 'previo' = antes do pedido de licença (documentos do LTA); 'durante' = junto com o pedido
create table if not exists public.documento_padrao (
  codigo  int primary key,
  nome    text not null,
  fase    text not null default 'durante' check (fase in ('previo', 'durante'))
);

-- Enquadramento: o mesmo CNAE pode ter vários, conforme a atividade real no local
-- e conforme o lugar (estado, ou uma regra própria do município).
create table if not exists public.enquadramento (
  id             bigint generated always as identity primary key,
  cnae_codigo    text not null references public.cnae (codigo) on delete cascade,
  uf             char(2) not null default 'SP',
  municipio      text,                              -- null = regra estadual
  condicao       text not null,                     -- o que a empresa faz no local
  risco          text not null check (risco in ('I', 'II', 'III', 'pendente')),
  exige_lta      text not null check (exige_lta in ('sim', 'nao', 'condicional', 'pendente')),
  compete_visa   boolean not null default true,
  isencao_cvs13  text not null default 'nao_listado'
                 check (isencao_cvs13 in ('nao_compete', 'condicional', 'nao_listado')),
  condicionante  text,                              -- texto da CVS 13 para a isenção
  alerta         text,                              -- quando o enquadramento muda
  observacoes    text,                              -- pontos de projeto
  nao_compreende text,                              -- atividades que ficam em outro CNAE
  status         text not null default 'conferir'
                 check (status in ('validado', 'conferir', 'pendente_cvs01')),
  fonte          text,
  fonte_pagina   text,
  atualizado_em  timestamptz not null default now()
);
create index if not exists enquadramento_cnae_idx on public.enquadramento (cnae_codigo, uf, municipio);

create table if not exists public.enquadramento_norma (
  enquadramento_id bigint not null references public.enquadramento (id) on delete cascade,
  norma_id         bigint not null references public.norma (id) on delete restrict,
  nota             text,                            -- o que essa norma cobre neste caso
  primary key (enquadramento_id, norma_id)
);

create table if not exists public.enquadramento_documento (
  id                bigint generated always as identity primary key,
  enquadramento_id  bigint not null references public.enquadramento (id) on delete cascade,
  ordem             int not null default 1,
  documento_codigo  int references public.documento_padrao (codigo),
  fase              text not null default 'previo' check (fase in ('previo', 'durante')),
  descricao         text not null
);
create index if not exists enquadramento_documento_idx on public.enquadramento_documento (enquadramento_id);

-- Referências de projeto por CNAE (RDCs, normas técnicas, pontos de atenção).
-- Base interna do escritório: complementa, mas não substitui, a classificação oficial.
create table if not exists public.cnae_referencia (
  id           bigint generated always as identity primary key,
  cnae_codigo  text not null references public.cnae (codigo) on delete cascade,
  norma_id     bigint references public.norma (id) on delete restrict,
  texto        text,
  fonte        text not null
);
create index if not exists cnae_referencia_idx on public.cnae_referencia (cnae_codigo);

-- Busca sem diferenciar acentos ("farmac" acha "farmácia" e "farmacêuticos")
create schema if not exists extensions;
create extension if not exists unaccent with schema extensions;

-- Busca por código (com ou sem pontuação) ou por termo da atividade
create or replace function public.buscar_cnae(termo text, limite int default 50)
returns setof public.cnae
language sql stable
set search_path = public
as $$
  select c.*
  from public.cnae c
  where (
    length(regexp_replace(termo, '\D', '', 'g')) >= 2
    and c.codigo_num like regexp_replace(termo, '\D', '', 'g') || '%'
  )
  or extensions.unaccent(c.descricao) ilike '%' || extensions.unaccent(termo) || '%'
  order by c.codigo
  limit limite;
$$;

-- Leitura liberada (a base é pública por natureza e alimenta a futura versão aberta).
-- Escrita só pelo painel/SQL do Supabase (service role), nunca pelo navegador.
alter table public.cnae                     enable row level security;
alter table public.norma                    enable row level security;
alter table public.documento_padrao         enable row level security;
alter table public.enquadramento            enable row level security;
alter table public.enquadramento_norma      enable row level security;
alter table public.enquadramento_documento  enable row level security;
alter table public.cnae_referencia          enable row level security;

do $$
declare t text;
begin
  foreach t in array array['cnae', 'norma', 'documento_padrao', 'enquadramento',
                           'enquadramento_norma', 'enquadramento_documento', 'cnae_referencia']
  loop
    execute format('drop policy if exists "leitura publica" on public.%I', t);
    execute format('create policy "leitura publica" on public.%I for select to anon, authenticated using (true)', t);
  end loop;
end $$;

grant execute on function public.buscar_cnae(text, int) to anon, authenticated;
