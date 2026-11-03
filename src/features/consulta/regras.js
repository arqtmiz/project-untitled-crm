// Regras de leitura da base sanitária. Ficam num só lugar para a versão
// interna e a futura versão pública darem sempre a mesma resposta.

export const RISCO = {
  III: { rotulo: 'III · Alto', peso: 3 },
  II: { rotulo: 'II · Médio', peso: 2 },
  I: { rotulo: 'I · Baixo', peso: 1 },
  pendente: { rotulo: 'Fora das listas', peso: 0 },
};

export const LTA = {
  sim: 'Sim',
  nao: 'Não',
  condicional: 'Depende do condicionante',
  varia: 'Depende da atividade no local',
  pendente: 'Confirmar com a VISA',
};

export const STATUS = {
  validado: 'Conforme portaria oficial',
  conferir: 'Conferir',
  pendente_cvs01: 'Conferir',
};

export const FASE = {
  previo: 'Documentos prévios (LTA)',
  durante: 'Documentos para o pedido de licença',
};

/**
 * Resume as situações possíveis de um CNAE.
 * - sem enquadramento: o CNAE não está no Anexo I da CVS 1 nem na CVS 13. Pela CVS 1
 *   (Art. 5º) não é passível de licença, mas isso só é dito com ressalva: confirmar na VISA.
 * - um enquadramento: a resposta é direta.
 * - vários: depende do que a empresa faz no local; mostra o pior caso.
 */
export function resumirCnae(enquadramentos) {
  if (!enquadramentos.length) {
    return {
      naBase: false,
      risco: 'pendente',
      lta: 'pendente',
      foraDaVisa: false,
      variasSituacoes: false,
    };
  }

  const pior = [...enquadramentos].sort(
    (a, b) => RISCO[b.risco].peso - RISCO[a.risco].peso,
  )[0];
  const ltas = new Set(enquadramentos.map((e) => e.exige_lta));

  return {
    naBase: true,
    risco: pior.risco,
    lta: ltas.size > 1 ? 'varia' : pior.exige_lta,
    foraDaVisa: enquadramentos.every((e) => e.isencao_cvs13 === 'nao_compete'),
    variasSituacoes: enquadramentos.length > 1,
  };
}

/** Com vários CNAEs, vale o de maior risco. Um CNAE fora da base deixa o resultado em aberto. */
export function enquadramentoFinal(resumos) {
  if (!resumos.length) return null;
  if (resumos.some((r) => !r.naBase)) {
    return {
      risco: 'pendente',
      lta: 'pendente',
      texto: 'Há atividade fora das listas oficiais: confirmar com a VISA',
    };
  }
  if (resumos.every((r) => r.foraDaVisa)) {
    return {
      risco: 'I',
      lta: 'nao',
      texto: 'Nenhuma atividade compete à Vigilância Sanitária',
    };
  }
  const pior = [...resumos].sort(
    (a, b) => RISCO[b.risco].peso - RISCO[a.risco].peso,
  )[0];
  const lta = resumos.some((r) => r.lta === 'sim')
    ? 'sim'
    : resumos.some((r) => r.lta === 'varia')
    ? 'varia'
    : resumos.some((r) => r.lta === 'condicional')
    ? 'condicional'
    : 'nao';
  return {
    risco: pior.risco,
    lta,
    texto: `Risco ${RISCO[pior.risco].rotulo} · LTA: ${LTA[lta]}`,
  };
}

/** Código do CNAE na URL: "8630-5/03" <-> "8630503" */
export const cnaeParaUrl = (codigo) => codigo.replace(/\D/g, '');
export const cnaeDaUrl = (valor) => {
  const d = String(valor).replace(/\D/g, '').padStart(7, '0');
  return `${d.slice(0, 4)}-${d.slice(4, 5)}/${d.slice(5, 7)}`;
};
