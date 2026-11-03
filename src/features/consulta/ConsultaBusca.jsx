import { useState } from 'react';
import { styled } from 'styled-components';
import { Search } from 'lucide-react';
import Button from '../../ui/Button';

const Painel = styled.form`
  align-items: end;
  background-color: var(--bg-normal);
  border: 1px solid var(--border-non-interactive);
  border-radius: var(--border-radius-sm);
  display: flex;
  flex-flow: row wrap;
  gap: 1.6rem;
  padding: 2.4rem;
`;

const Campo = styled.div`
  display: flex;
  flex: 1 1 32rem;
  flex-flow: column nowrap;
  gap: 0.8rem;

  & label {
    font-size: 1.4rem;
    font-weight: 600;
  }

  & input {
    background-color: var(--bg-normal);
    border: 1px solid var(--border-interactive);
    border-radius: 0.6rem;
    color: var(--text-hc);
    font-size: 1.6rem;
    line-height: 2.4rem;
    padding: 1.2rem 1.4rem;
    width: 100%;
  }

  & small {
    color: var(--text-lc);
    font-size: 1.3rem;
  }
`;

function ConsultaBusca({ valorInicial = '', onBuscar }) {
  const [termo, setTermo] = useState(valorInicial);

  function handleSubmit(e) {
    e.preventDefault();
    if (termo.trim()) onBuscar(termo.trim());
  }

  return (
    <Painel onSubmit={handleSubmit} role="search">
      <Campo>
        <label htmlFor="consulta-termo">CNPJ, CNAE ou atividade</label>
        <input
          id="consulta-termo"
          value={termo}
          onChange={(e) => setTermo(e.target.value)}
          placeholder="Ex.: 12.345.678/0001-90, 8630-5/03 ou farmácia"
          autoComplete="off"
          inputMode="search"
        />
        <small>Base: regra estadual de São Paulo (Portarias CVS).</small>
      </Campo>
      <Button type="submit" variation="primary">
        <Search size="18" />
        Consultar
      </Button>
    </Painel>
  );
}

export default ConsultaBusca;
