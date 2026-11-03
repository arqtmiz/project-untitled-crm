import { styled } from 'styled-components';
import {
  CircleDollarSign,
  LayoutDashboard,
  ShieldCheck,
  Settings,
  Users,
} from 'lucide-react';
import { Nav, NavList, NavLink } from './VerticalNav';
import Logo from './Logo';
import SignOut from '../features/auth/SignOut';

const StyledAppSidebar = styled.aside`
  background: var(--bg-normal);
  border-right: 1px solid var(--border-non-interactive);
  display: flex;
  flex-flow: column nowrap;
  gap: 2.4rem;
  grid-row: 1 / -1;
  justify-content: space-between;
  overflow-y: auto;
  padding: 1.6rem;

  @media (max-width: 760px) {
    border-bottom: 1px solid var(--border-non-interactive);
    border-right: none;
    gap: 0.8rem;
    grid-row: auto;
    overflow: visible;
    padding: 1.2rem 1.6rem;
  }
`;

const AppSidebarLogo = styled(Logo)`
  padding: 0 0.8rem;
`;

function AppSidebar() {
  return (
    <StyledAppSidebar>
      <AppSidebarLogo to="/workspace" />
      <Nav>
        <NavList>
          <li>
            <NavLink to="/workspace/dashboard">
              <LayoutDashboard size="20" />
              <span>Dashboard</span>
            </NavLink>
          </li>
          <li>
            <NavLink to="/workspace/consulta">
              <ShieldCheck size="20" />
              <span>Consulta sanitária</span>
            </NavLink>
          </li>
          <li>
            <NavLink to="/workspace/contacts">
              <Users size="20" />
              <span>Pesquisados</span>
            </NavLink>
          </li>
          <li>
            <NavLink to="/workspace/deals">
              <CircleDollarSign size="20" />
              <span>Pesquisas</span>
            </NavLink>
          </li>
        </NavList>
        <NavList>
          <li>
            <NavLink to="/workspace/settings">
              <Settings size="20" />
              <span>Configurações</span>
            </NavLink>
          </li>
          <li>
            <SignOut />
          </li>
        </NavList>
      </Nav>
    </StyledAppSidebar>
  );
}

export default AppSidebar;
