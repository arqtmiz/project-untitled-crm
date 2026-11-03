import { Link } from 'react-router-dom';
import { styled } from 'styled-components';
import RiscoBadge from './RiscoBadge';
import { LTA, cnaeParaUrl, enquadramentoFinal } from './regras';

const Cartao = styled.section`
  background-color: var(--bg-normal);
  border: 1px solid var(--border-non-interactive);
  border-radius: var(--border-radius-sm);
  display: flex;
  flex-flow: column nowrap;
  gap: 2rem;
  padding: 2.4rem;
`;

const Cabecalho = styled.div`
  align-items: start;
  display: flex;
  flex-flow: row wrap;
  gap: 1.6rem;
  justify-content: space-between;

  & h2 {
    font-size: 2rem;
    font-weight: 600;
    line-height: 2.8rem;
  }

  & p {
    color: var(--text-lc);
    font-size: 1.4rem;
  }
`;

const Final = styled.div`
  background-color: ${(p) =>
    p.$alto ? 'var(--tomato-3)' : 'var(--bg-subtle)'};
  border-radius: 0.6rem;
  color: ${(p) => (p.$alto ? 'var(--tomato-11)' : 'var(--text-hc)')};
  font-size: 1.5rem;
  font-weight: 600;
  padding: 1.2rem 1.6rem;
`;

const Lista = styled.ul`
  display: flex;
  flex-flow: column nowrap;
`;

const Item = styled.li`
  align-items: center;
  border-top: 1px solid var(--border-non-interactive);
  column-gap: 1.6rem;
  display: grid;
  grid-template-columns: 11rem minmax(0, 1fr) auto auto 11rem;
  padding: 1.4rem 0;
  row-gap: 0.6rem;

  & .codigo {
    font-family: ui-monospace, 'SFMono-Regular', Menlo, monospace;
    font-size: 1.4rem;
    font-weight: 600;
    white-space: nowrap;
  }

  & .descricao {
    font-size: 1.4rem;
    line-height: 2rem;
  }

  & .tipo {
    color: var(--text-lc);
    font-size: 1.3rem;
  }

  & .lta {
    font-size: 1.4rem;
    font-weight: 600;
  }

  & a {
    color: var(--mint-11);
    font-size: 1.4rem;
    font-weight: 600;
    text-decoration: underline;
  }

  @media (max-width: 760px) {
    grid-template-columns: auto auto 1fr;

    & .descricao {
      grid-column: 1 / -1;
      grid-row: 2;
    }
  }
`;

const Nota = styled.p`
  background-color: var(--bg-subtle);
  border-radius: 0.6rem;
  color: var(--text-lc);
  font-size: 1.3rem;
  line-height: 2rem;
  padding: 1.2rem 1.6rem;
`;

function textoLta(resumo) {
  if (!resumo.naBase) return 'Confirmar com a VISA';
  if (resumo.foraDaVisa) return 'Não compete à VISA';
  return LTA[resumo.lta];
}

function ConsultaResultado({ resultado }) {
  const { empresa, atividades } = resultado;
  const final = empresa
    ? enquadramentoFinal(atividades.map((a) => a.resumo))
    : null;

  if (!atividades.length)
    return (
      <Cartao>
        <p>
          Nenhuma atividade encontrada na base. Tente o código do CNAE ou outro
          termo.
        </p>
      </Cartao>
    );

  return (
    <Cartao aria-label="Resultado da consulta">
      {empresa && (
        <Cabecalho>
          <div>
            <h2>{empresa.razaoSocial}</h2>
            <p>
              CNPJ {empresa.cnpj} · {empresa.situacao} · {empresa.municipio}/
              {empresa.uf}
            </p>
          </div>
          {final && (
            <Final $alto={final.risco === 'III'}>
              Enquadramento final: {final.texto}
            </Final>
          )}
        </Cabecalho>
      )}

      {empresa && empresa.uf !== 'SP' && (
        <Nota>
          Empresa fora de São Paulo. A base atual segue a regra paulista
          (Portarias CVS); confira a norma sanitária do estado {empresa.uf}{' '}
          antes de concluir.
        </Nota>
      )}

      <Lista>
        {atividades.map((a) => (
          <Item key={a.codigo}>
            <span className="codigo">{a.codigo}</span>
            <span className="descricao">{a.descricao}</span>
            {a.tipo ? <span className="tipo">{a.tipo}</span> : <span />}
            <span>
              <RiscoBadge risco={a.resumo.risco} />{' '}
              <span className="lta">LTA: {textoLta(a.resumo)}</span>
            </span>
            <Link to={`/workspace/consulta/${cnaeParaUrl(a.codigo)}`}>
              {a.resumo.variasSituacoes ? 'Ver situações' : 'Abrir ficha'}
            </Link>
          </Item>
        ))}
      </Lista>

      <Nota>
        Com vários CNAEs, vale o de maior risco. &quot;Depende...&quot; e
        &quot;Ver situações&quot; significam que a resposta muda conforme o que
        a empresa faz no local. Fonte: Portarias CVS 1/2024 (atualizada em
        13/05/2026) e CVS 13/2025.
      </Nota>
    </Cartao>
  );
}

export default ConsultaResultado;
