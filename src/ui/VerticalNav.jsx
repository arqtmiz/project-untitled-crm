import styled from 'styled-components';
import { NavLink } from 'react-router-dom';

const StyledNav = styled.nav`
  display: flex;
  flex-flow: column nowrap;
  flex: 1;
  justify-content: space-between;

  @media (max-width: 760px) {
    flex-flow: row wrap;
    gap: 0.4rem;
    justify-content: start;
  }
`;

const NavList = styled.ul`
  display: flex;
  flex-direction: column;
  gap: 0.8rem;

  &:not(:last-child) {
    margin-bottom: 1.6rem;
  }

  @media (max-width: 760px) {
    flex-flow: row wrap;
    gap: 0.4rem;

    &:not(:last-child) {
      margin-bottom: 0;
    }
  }
`;

const StyledNavLink = styled(NavLink)`
  &:link,
  &:visited {
    align-items: center;
    display: flex;
    font-size: 1.4rem;
    font-weight: 500;
    gap: 0.8rem;
    line-height: 2rem;
    padding: 0.8rem;
    transition: all 0.3s;
  }

  &:hover,
  &:active,
  &.active:link,
  &.active:visited {
    background-color: var(--component-selected);
    border-radius: var(--border-radius-sm);
  }

  &:hover svg,
  &:active svg,
  &.active:link svg,
  &.active:visited svg {
    color: var(--text-hc);
  }
`;

export { StyledNav as Nav, NavList, StyledNavLink as NavLink };
