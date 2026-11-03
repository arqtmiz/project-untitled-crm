# SanitaCRM — Fase 1: base sanitária e Consulta

## O que tem neste pacote

- **Tela "Consulta sanitária"** no menu do CRM
  - Busca por CNPJ (puxa os CNAEs na Receita Federal), por código de CNAE ou por palavra (ex.: farmácia)
  - Mostra risco, se exige LTA e o enquadramento final da empresa (vale o CNAE de maior risco)
  - Ficha de cada CNAE: situações possíveis, normas, documentos da LTA e roteiro de pesquisa
- **Banco de dados** (pasta `supabase/`)
  - `migrations/20261103120000_base_sanitaria.sql`: cria as tabelas
  - `seed.sql`: carrega 1.224 CNAEs e 1.228 enquadramentos
- **Ajustes no CRM**
  - Corrigido o erro que impedia o build (`WorkspaceMemebers`)
  - Menu em português e layout que funciona no celular

## Como instalar (uma vez)

1. Copie os arquivos deste pacote para a pasta do projeto, **substituindo** os que já existem.
2. No Supabase, abra **SQL Editor → New query**.
3. Cole o conteúdo de `supabase/migrations/20261103120000_base_sanitaria.sql` e clique em **Run**.
4. Nova query: cole o conteúdo de `supabase/seed.sql` e clique em **Run**.
5. No terminal, na pasta do projeto: `npm install` e depois `npm run dev`.
6. Entre no CRM e clique em **Consulta sanitária**.

> O `seed.sql` pode ser rodado de novo quando a base for atualizada: ele substitui os dados de SP sem duplicar.

## Status da base

Fontes oficiais: **Portaria CVS 1/2024 (atualizada em 13/05/2026)** e **Portaria CVS 13/2025**.

| Grupo | Quantidade |
|---|---|
| CNAEs na base | 1.332 (praticamente toda a tabela do IBGE) |
| Situações da CVS 1 (Anexo I), com risco e documentos | 733 (451 exigem LTA) |
| CNAEs que não competem à VISA (CVS 13) | 1.130 |
| CNAEs isentos só com condicionante (CVS 13) | 73 (a CVS 1 diz o que vale se não cumprir) |
| Normas de projeto (RDCs) da base interna | 76 referências |

- **Documentos prévios** = documentos do LTA (códigos oficiais 1 a 9 do Anexo IV).
- **Risco II**: licença sem vistoria prévia. **Risco III**: análise e vistoria antes de funcionar, inclusive MEI.
- **CNAE fora das listas**: pela CVS 1 (Art. 5º) não é passível de licença; o sistema mostra "Confirmar com a VISA".
- As RDCs por CNAE vêm da base interna (SanitaCheck) e aparecem separadas da classificação oficial.

## Atualizar a base no futuro

Quando sair nova republicação da CVS 1: extrair o Anexo I de novo, gerar o `seed.sql` e rodar no Supabase. O seed substitui os dados de SP sem duplicar.
