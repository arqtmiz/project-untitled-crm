import { styled } from 'styled-components';
import { Outlet } from 'react-router-dom';
import AppSidebar from './AppSidebar';
import AppHeader from './AppHeader';

const StyledAppLayout = styled.div`
  display: grid;
  grid-template-columns: 24rem 1fr;
  grid-template-rows: auto 1fr;
  height: 100dvh;

  @media (max-width: 760px) {
    grid-template-columns: 1fr;
    grid-template-rows: auto auto 1fr;
  }
`;

const AppMain = styled.main`
  background-color: var(--bg-subtle);
  overflow: auto;
  padding: 3.2rem;

  @media (max-width: 760px) {
    padding: 1.6rem;
  }
`;

function AppLayout() {
  return (
    <StyledAppLayout>
      <AppSidebar />
      <AppHeader />
      <AppMain>
        <Outlet />
      </AppMain>
    </StyledAppLayout>
  );
}

export default AppLayout;
