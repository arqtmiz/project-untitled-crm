import { styled, css } from 'styled-components';
import { RISCO } from './regras';

const cores = {
  III: css`
    background-color: var(--tomato-3);
    color: var(--tomato-11);
  `,
  II: css`
    background-color: hsla(39, 100%, 55%, 0.22);
    color: var(--text-hc);
  `,
  I: css`
    background-color: var(--mint-3);
    color: var(--mint-11);
  `,
  pendente: css`
    background-color: var(--sage-4);
    color: var(--text-lc);
  `,
};

const Badge = styled.span`
  border-radius: 999px;
  display: inline-block;
  font-size: 1.2rem;
  font-weight: 600;
  line-height: 2rem;
  padding: 0.2rem 1rem;
  white-space: nowrap;

  ${(props) => cores[props.$risco] ?? cores.pendente}
`;

function RiscoBadge({ risco, children }) {
  return (
    <Badge $risco={risco}>{children ?? RISCO[risco]?.rotulo ?? risco}</Badge>
  );
}

export default RiscoBadge;
