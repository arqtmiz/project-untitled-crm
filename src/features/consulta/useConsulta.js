import { useQuery } from '@tanstack/react-query';
import {
  buscarCnae,
  getCnpj,
  getEnquadramentos,
  getFichaCnae,
  soDigitos,
} from '../../services/apiConsulta';
import { resumirCnae } from './regras';

/**
 * Decide o tipo de busca pelo que foi digitado:
 * 14 dígitos = CNPJ; 7 dígitos = CNAE exato; qualquer outra coisa = termo.
 */
export function tipoDeBusca(termo) {
  const t = (termo ?? '').trim();
  if (!t) return null;
  const digitos = soDigitos(t);
  if (digitos.length === 14) return 'cnpj';
  if (digitos.length >= 2 && /^[\d.\-/\s]+$/.test(t)) return 'codigo';
  return 'termo';
}

async function consultar(termo) {
  const tipo = tipoDeBusca(termo);

  if (tipo === 'cnpj') {
    const empresa = await getCnpj(termo);
    const codigos = empresa.atividades.map((a) => a.codigo);
    const enq = await getEnquadramentos(codigos);
    const atividades = empresa.atividades.map((a) => {
      const lista = enq.filter((e) => e.cnae_codigo === a.codigo);
      return { ...a, enquadramentos: lista, resumo: resumirCnae(lista) };
    });
    return { tipo, empresa, atividades };
  }

  const cnaes = await buscarCnae(termo.trim());
  const enq = await getEnquadramentos(cnaes.map((c) => c.codigo));
  const atividades = cnaes.map((c) => {
    const lista = enq.filter((e) => e.cnae_codigo === c.codigo);
    return {
      ...c,
      tipo: null,
      enquadramentos: lista,
      resumo: resumirCnae(lista),
    };
  });
  return { tipo, empresa: null, atividades };
}

export function useConsulta(termo) {
  return useQuery({
    queryKey: ['consulta', termo],
    queryFn: () => consultar(termo),
    enabled: Boolean(tipoDeBusca(termo)),
    retry: false,
    staleTime: 5 * 60 * 1000,
  });
}

export function useFichaCnae(codigo) {
  return useQuery({
    queryKey: ['ficha-cnae', codigo],
    queryFn: () => getFichaCnae(codigo),
    staleTime: 5 * 60 * 1000,
  });
}
