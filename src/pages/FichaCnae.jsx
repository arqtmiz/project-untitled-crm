import { useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { styled } from 'styled-components';
import { ChevronLeftIcon } from 'lucide-react';
import { useApp } from '../hooks/useApp';
import Button from '../ui/Button';
import Spinner from '../ui/Spinner';
import FichaCnae from '../features/consulta/FichaCnae';
import { useFichaCnae } from '../features/consulta/useConsulta';
import { cnaeDaUrl } from '../features/consulta/regras';

const StyledFicha = styled.div`
  display: flex;
  flex-flow: column nowrap;
  gap: 2.4rem;
  margin-inline: auto;
  max-width: 96rem;
  width: 100%;
`;

const Titulo = styled.header`
  display: flex;
  flex-flow: column nowrap;
  gap: 0.6rem;

  & span {
    color: var(--mint-11);
    font-family: ui-monospace, 'SFMono-Regular', Menlo, monospace;
    font-size: 1.5rem;
    font-weight: 600;
  }

  & h1 {
    font-size: 2.4rem;
    font-weight: 600;
    line-height: 3.2rem;
  }
`;

const Erro = styled.p`
  background-color: var(--tomato-3);
  border-radius: 0.6rem;
  color: var(--tomato-11);
  font-size: 1.4rem;
  padding: 1.2rem 1.6rem;
`;

function FichaCnaePage() {
  const { updatePageTitle } = useApp();
  useEffect(() => updatePageTitle('Ficha do CNAE'), [updatePageTitle]);
  const navigate = useNavigate();

  const codigo = cnaeDaUrl(useParams().codigo);
  const { data, isLoading, error } = useFichaCnae(codigo);

  return (
    <StyledFicha>
      <div>
        <Button variation="neutral" onClick={() => navigate(-1)}>
          <ChevronLeftIcon />
          Voltar
        </Button>
      </div>
      <Titulo>
        <span>CNAE {codigo}</span>
        {data?.cnae && <h1>{data.cnae.descricao}</h1>}
      </Titulo>
      {isLoading && (
        <Spinner.Wrapper>
          <Spinner />
        </Spinner.Wrapper>
      )}
      {error && <Erro role="alert">{error.message}</Erro>}
      {data && (
        <FichaCnae
          cnae={data.cnae}
          enquadramentos={data.enquadramentos}
          referencias={data.referencias}
        />
      )}
    </StyledFicha>
  );
}

export default FichaCnaePage;
