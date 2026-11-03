import supabase from './supabase';

const BRASIL_API = 'https://brasilapi.com.br/api/cnpj/v1/';

/** Mantém só os dígitos: "12.345.678/0001-90" -> "12345678000190" */
export function soDigitos(valor = '') {
  return String(valor).replace(/\D/g, '');
}

/** 8630503 -> "8630-5/03" */
export function formatarCnae(valor) {
  const d = soDigitos(valor).padStart(7, '0');
  return `${d.slice(0, 4)}-${d.slice(4, 5)}/${d.slice(5, 7)}`;
}

/** Dados públicos do CNPJ (Receita Federal, via BrasilAPI). */
export async function getCnpj(cnpj) {
  const digitos = soDigitos(cnpj);
  if (digitos.length !== 14) throw new Error('O CNPJ precisa ter 14 dígitos.');

  const res = await fetch(BRASIL_API + digitos);
  if (res.status === 404)
    throw new Error('CNPJ não encontrado na Receita Federal.');
  if (!res.ok)
    throw new Error('Não foi possível consultar o CNPJ agora. Tente de novo.');
  const d = await res.json();

  const atividades = [
    {
      codigo: formatarCnae(d.cnae_fiscal),
      descricao: d.cnae_fiscal_descricao,
      tipo: 'Principal',
    },
    ...(d.cnaes_secundarios ?? [])
      .filter((c) => c.codigo) // a Receita devolve {codigo: 0} quando não há secundários
      .map((c) => ({
        codigo: formatarCnae(c.codigo),
        descricao: c.descricao,
        tipo: 'Secundário',
      })),
  ];

  return {
    cnpj: digitos,
    razaoSocial: d.razao_social,
    nomeFantasia: d.nome_fantasia,
    situacao: d.descricao_situacao_cadastral,
    municipio: d.municipio,
    uf: d.uf,
    atividades,
  };
}

const SELECT_ENQUADRAMENTO = `
  *,
  cnae ( codigo, descricao ),
  enquadramento_norma ( nota, norma ( id, sigla, titulo, esfera, orgao, url, vigencia_status ) ),
  enquadramento_documento ( id, ordem, documento_codigo, fase, descricao )
`;

/** Enquadramentos de vários CNAEs (regra estadual; regra municipal entra depois). */
export async function getEnquadramentos(codigos, uf = 'SP') {
  if (!codigos.length) return [];
  const { data, error } = await supabase
    .from('enquadramento')
    .select(SELECT_ENQUADRAMENTO)
    .in('cnae_codigo', codigos)
    .eq('uf', uf)
    .is('municipio', null)
    .order('id');

  if (error) throw new Error('Não foi possível ler a base sanitária.');
  return data;
}

/** Ficha técnica de um CNAE. */
export async function getFichaCnae(codigo, uf = 'SP') {
  const { data: cnae, error } = await supabase
    .from('cnae')
    .select('codigo, descricao')
    .eq('codigo', codigo)
    .maybeSingle();

  if (error) throw new Error('Não foi possível ler a base sanitária.');
  if (!cnae) return { cnae, enquadramentos: [], referencias: [] };

  const [enquadramentos, { data: referencias, error: erroRef }] =
    await Promise.all([
      getEnquadramentos([codigo], uf),
      supabase
        .from('cnae_referencia')
        .select('id, texto, fonte, norma ( id, sigla )')
        .eq('cnae_codigo', codigo)
        .order('id'),
    ]);
  if (erroRef) throw new Error('Não foi possível ler a base sanitária.');
  return { cnae, enquadramentos, referencias };
}

/** Busca por código (com ou sem pontuação) ou por termo da atividade. */
export async function buscarCnae(termo) {
  const { data, error } = await supabase.rpc('buscar_cnae', {
    termo,
    limite: 50,
  });
  if (error) throw new Error('Não foi possível pesquisar na base sanitária.');
  return data;
}
