import { useEffect } from 'react';
import { useSearchParams } from 'react-router-dom';
import { styled } from 'styled-components';
import { useApp } from '../hooks/useApp';
import Spinner from '../ui/Spinner';
import ConsultaBusca from '../features/consulta/ConsultaBusca';
import ConsultaResultado from '../features/consulta/ConsultaResultado';
import { useConsulta } from '../features/consulta/useConsulta';

const StyledConsulta = styled.div`
  display: flex;
  flex-flow: column nowrap;
  gap: 2.4rem;
  margin-inline: auto;
  max-width: 112rem;
  width: 100%;
`;

const Erro = styled.p`
  background-color: var(--tomato-3);
  border-radius: 0.6rem;
  color: var(--tomato-11);
  font-size: 1.4rem;
  padding: 1.2rem 1.6rem;
`;

function Consulta() {
  const { updatePageTitle } = useApp();
  useEffect(() => updatePageTitle('Consulta sanitária'), [updatePageTitle]);

  // O termo fica na URL: dá para voltar, recarregar e compartilhar a consulta.
  const [searchParams, setSearchParams] = useSearchParams();
  const termo = searchParams.get('q') ?? '';
  const { data, isFetching, error } = useConsulta(termo);

  return (
    <StyledConsulta>
      <ConsultaBusca
        key={termo}
        valorInicial={termo}
        onBuscar={(t) => setSearchParams({ q: t })}
      />
      {isFetching && (
        <Spinner.Wrapper>
          <Spinner />
        </Spinner.Wrapper>
      )}
      {error && <Erro role="alert">{error.message}</Erro>}
      {data && !isFetching && <ConsultaResultado resultado={data} />}
    </StyledConsulta>
  );
}

export default Consulta;
