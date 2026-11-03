import { Link } from 'react-router-dom';
import { styled } from 'styled-components';
import RiscoBadge from './RiscoBadge';
import { FASE, LTA, STATUS, cnaeParaUrl } from './regras';

const Pilha = styled.div`
  display: flex;
  flex-flow: column nowrap;
  gap: 2.4rem;
`;

const Cartao = styled.section`
  background-color: var(--bg-normal);
  border: 1px solid var(--border-non-interactive);
  border-radius: var(--border-radius-sm);
  display: flex;
  flex-flow: column nowrap;
  gap: 1.6rem;
  padding: 2.4rem;

  & h3 {
    font-size: 1.7rem;
    font-weight: 600;
  }
`;

const Indicadores = styled.div`
  display: grid;
  gap: 1.2rem;
  grid-template-columns: repeat(auto-fit, minmax(min(16rem, 100%), 1fr));
`;

const Indicador = styled.div`
  border: 1px solid var(--border-non-interactive);
  border-radius: 0.6rem;
  display: flex;
  flex-flow: column nowrap;
  gap: 0.6rem;
  padding: 1.4rem;

  & dt {
    color: var(--text-lc);
    font-size: 1.2rem;
    font-weight: 600;
    letter-spacing: 0.04em;
    text-transform: uppercase;
  }

  & dd {
    font-size: 1.6rem;
    font-weight: 600;
  }
`;

const Aviso = styled.p`
  background-color: ${(p) =>
    p.$forte ? 'var(--tomato-3)' : 'var(--bg-subtle)'};
  border-radius: 0.6rem;
  color: ${(p) => (p.$forte ? 'var(--tomato-11)' : 'var(--text-hc)')};
  font-size: 1.4rem;
  line-height: 2.2rem;
  padding: 1.2rem 1.6rem;
`;

const ListaNormas = styled.ul`
  display: flex;
  flex-flow: column nowrap;
  gap: 1rem;

  & li {
    border: 1px solid var(--border-non-interactive);
    border-radius: 0.6rem;
    display: flex;
    flex-flow: column nowrap;
    gap: 0.2rem;
    padding: 1.2rem 1.4rem;
  }

  & strong {
    font-size: 1.5rem;
  }

  & span {
    color: var(--text-lc);
    font-size: 1.3rem;
  }
`;

const Checklist = styled.ul`
  display: flex;
  flex-flow: column nowrap;
  gap: 1rem;

  & label {
    align-items: start;
    display: flex;
    font-size: 1.5rem;
    gap: 1.2rem;
    line-height: 2.2rem;
  }

  & input {
    flex: none;
    height: 2rem;
    margin-top: 0.1rem;
    width: 2rem;
  }
`;

const Roteiro = styled.ol`
  display: flex;
  flex-flow: column nowrap;
  font-size: 1.5rem;
  gap: 0.8rem;
  line-height: 2.2rem;
  list-style: decimal;
  padding-left: 2.2rem;
`;

const Fonte = styled.p`
  color: var(--text-lc);
  font-size: 1.3rem;
`;

const NaoCompreende = styled.ul`
  display: flex;
  flex-flow: column nowrap;
  font-size: 1.4rem;
  gap: 0.6rem;
  line-height: 2.2rem;

  & a {
    color: var(--mint-11);
    font-weight: 600;
    text-decoration: underline;
  }
`;

// "Estabelecimento ... (8630-5/02)" -> texto + link para a ficha do outro CNAE
function ItemNaoCompreende({ texto }) {
  const m = texto.match(/^(.*?)\s*\((\d{4}-\d\/\d{2})\)\.?$/);
  if (!m) return <li>{texto}</li>;
  return (
    <li>
      {m[1]}{' '}
      <Link to={`/workspace/consulta/${cnaeParaUrl(m[2])}`}>({m[2]})</Link>
    </li>
  );
}

const ROTEIRO = [
  'Vigência: confirmar se as normas estão em vigor e se houve revogação parcial.',
  'Escopo: ler o Capítulo I e conferir se o serviço não está expressamente excluído.',
  'Glossário: conferir termos técnicos (área crítica, barreira sanitária, RPA etc.).',
  'Obrigações de projeto: separar o que "deve", o que "é vedado" e o que "pode".',
  'Documentação: montar as peças técnicas com as ART/RRT correspondentes.',
];

function Situacao({ e, numero, total }) {
  const normas = e.enquadramento_norma ?? [];
  const docs = [...(e.enquadramento_documento ?? [])].sort(
    (a, b) => a.ordem - b.ordem,
  );
  const foraDaVisa = e.isencao_cvs13 === 'nao_compete';
  const fases = ['previo', 'durante']
    .map((f) => ({ fase: f, itens: docs.filter((d) => d.fase === f) }))
    .filter((g) => g.itens.length);

  return (
    <Cartao aria-label={`Situação ${numero}`}>
      <h3>
        {total > 1 ? `Situação ${numero}: ` : ''}
        {e.condicao}
      </h3>

      <Indicadores as="dl">
        <Indicador>
          <dt>Grau de risco</dt>
          <dd>
            <RiscoBadge risco={e.risco} />
          </dd>
        </Indicador>
        <Indicador>
          <dt>Exige LTA?</dt>
          <dd>{foraDaVisa ? 'Não (fora da VISA)' : LTA[e.exige_lta]}</dd>
        </Indicador>
        <Indicador>
          <dt>Isenção CVS 13/2025</dt>
          <dd>
            {e.isencao_cvs13 === 'nao_compete'
              ? 'Não compete à VISA'
              : e.isencao_cvs13 === 'condicional'
              ? 'Isento com condicionante'
              : 'Não isento'}
          </dd>
        </Indicador>
        <Indicador>
          <dt>Status da informação</dt>
          <dd>{STATUS[e.status]}</dd>
        </Indicador>
      </Indicadores>

      {e.condicionante && <Aviso>Condicionante: {e.condicionante}</Aviso>}
      {e.alerta && <Aviso $forte>{e.alerta}</Aviso>}
      {e.observacoes && <Aviso>Pontos de projeto: {e.observacoes}</Aviso>}

      {normas.length > 0 && (
        <>
          <h3>Normas aplicáveis</h3>
          <ListaNormas>
            {normas.map((n) => (
              <li key={n.norma.id}>
                <strong>{n.norma.sigla}</strong>
                {n.nota && <span>{n.nota}</span>}
                {n.norma.vigencia_status !== 'vigente' && (
                  <span>Vigência: conferir</span>
                )}
              </li>
            ))}
          </ListaNormas>
        </>
      )}

      {!foraDaVisa &&
        fases.map((g) => (
          <div key={g.fase}>
            <h3>{FASE[g.fase]}</h3>
            <Checklist>
              {g.itens.map((d) => (
                <li key={d.id}>
                  <label>
                    <input type="checkbox" />
                    <span>{d.descricao}</span>
                  </label>
                </li>
              ))}
            </Checklist>
          </div>
        ))}
      {!foraDaVisa && e.exige_lta === 'nao' && e.risco !== 'I' && (
        <Fonte>Sem documentos prévios: não exige LTA nesta situação.</Fonte>
      )}

      <Fonte>
        Fonte: {e.fonte}
        {e.fonte_pagina ? `, p. ${e.fonte_pagina}` : ''}
      </Fonte>
    </Cartao>
  );
}

function FichaCnae({ cnae, enquadramentos, referencias = [] }) {
  if (!cnae)
    return (
      <Cartao>
        <Aviso $forte>
          Este CNAE não consta no Anexo I da Portaria CVS 1 nem na CVS 13. Pela
          CVS 1 (Art. 5º), não é passível de licença sanitária, mas continua
          sujeito à fiscalização. Confirme com a VISA municipal antes de
          orientar o cliente.
        </Aviso>
      </Cartao>
    );

  const naoCompreende = [
    ...new Set(
      enquadramentos.flatMap((e) =>
        e.nao_compreende ? e.nao_compreende.split('; ') : [],
      ),
    ),
  ];

  return (
    <Pilha>
      {!enquadramentos.length && (
        <Aviso $forte>
          CNAE sem enquadramento cadastrado. Confirme com a VISA municipal antes
          de orientar o cliente.
        </Aviso>
      )}
      {enquadramentos.length > 1 && (
        <Aviso>
          Este CNAE tem {enquadramentos.length} situações. O enquadramento
          depende do que a empresa faz no local.
        </Aviso>
      )}
      {enquadramentos.map((e, i) => (
        <Situacao
          key={e.id}
          e={e}
          numero={i + 1}
          total={enquadramentos.length}
        />
      ))}
      {naoCompreende.length > 0 && (
        <Cartao>
          <h3>Não compreende (fica em outro CNAE)</h3>
          <NaoCompreende>
            {naoCompreende.map((t) => (
              <ItemNaoCompreende key={t} texto={t} />
            ))}
          </NaoCompreende>
        </Cartao>
      )}
      {referencias.length > 0 && (
        <Cartao>
          <h3>Normas técnicas para o projeto</h3>
          <ListaNormas>
            {referencias.map((r) => (
              <li key={r.id}>
                {r.norma ? (
                  <strong>{r.norma.sigla}</strong>
                ) : (
                  <strong>Ponto de atenção</strong>
                )}
                {r.texto && <span>{r.texto}</span>}
              </li>
            ))}
          </ListaNormas>
          <Fonte>
            {referencias[0].fonte}: complementa a portaria; confira a vigência
            de cada norma.
          </Fonte>
        </Cartao>
      )}
      {enquadramentos.some((e) => e.isencao_cvs13 !== 'nao_compete') && (
        <Cartao>
          <h3>Roteiro de pesquisa (método 5 etapas)</h3>
          <Roteiro>
            {ROTEIRO.map((r) => (
              <li key={r}>{r}</li>
            ))}
          </Roteiro>
        </Cartao>
      )}
    </Pilha>
  );
}

export default FichaCnae;
