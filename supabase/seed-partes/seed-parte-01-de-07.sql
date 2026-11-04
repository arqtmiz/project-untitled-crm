-- Seed SanitaCRM — parte 1 de 7. Rode as partes em ordem.
begin;
-- Gerado automaticamente por gerar_base.py. Não edite à mão: rode o script de novo.
-- Fontes: Portaria CVS 1/2024 (atualizada em 13/05/2026), Portaria CVS 13/2025 e base interna (SanitaCheck).
begin;

insert into public.documento_padrao (codigo, nome, fase) values
  (1, 'Autorização de construção emitida pela CNEN (Comissão Nacional de Energia Nuclear) — cópia', 'previo'),
  (2, 'Comprovante de recolhimento (DARE ou equivalente municipal) da taxa de LTA — Laudo Técnico de Avaliação de projeto de edificação — original', 'previo'),
  (3, 'Comprovante de responsabilidade técnica — ART ou RRT — cópia', 'previo'),
  (4, 'Memorial descritivo de fluxos e de atividades — cópia', 'previo'),
  (5, 'Memorial descritivo do projeto arquitetônico da edificação — cópia', 'previo'),
  (6, 'Projeto arquitetônico da edificação (jogo de plantas completo) — cópia', 'previo'),
  (7, 'Projeto de tratamento, destinação final ou afastamento dos efluentes (Resolução CONAMA 430/11) — cópia', 'previo'),
  (8, 'Projeto de tratamento, destinação final ou afastamento dos resíduos (Lei 12.305/2010 — PNRS) — cópia', 'previo'),
  (9, 'Formulário de solicitação de avaliação físico-funcional de projeto de edificação (LTA) — Anexo 2 da Portaria CVS 10/2017', 'previo'),
  (20, 'Autorização para preparo e uso de fontes radioativas não seladas (CNEN)', 'durante'),
  (21, 'CPF — cópia', 'durante'),
  (22, 'Documento da empresa que declara a destituição da responsabilidade legal', 'durante'),
  (23, 'CNPJ — cópia', 'durante'),
  (25, 'Autorização para operação (CNEN) — cópia', 'durante'),
  (26, 'Comprovante de endereço (atividade exercida por pessoa física)', 'durante'),
  (27, 'Documento de identidade do representante legal', 'durante'),
  (28, 'Comprovante da taxa de equipamentos de saúde ou de isenção', 'durante'),
  (29, 'Comprovante da taxa de inspeção sanitária ou de isenção', 'durante'),
  (30, 'Comprovante da taxa de rubrica de livros ou de isenção', 'durante'),
  (31, 'Comprovante da taxa de termo de responsabilidade técnica ou de isenção', 'durante'),
  (32, 'Comprovante de responsabilidade técnica emitido pelo conselho profissional', 'durante'),
  (33, 'Comprovante de vínculo empregatício ou contrato de prestação de serviço', 'durante'),
  (34, 'Concessão de lavra para água mineral (DNPM)', 'durante'),
  (35, 'Contrato de aluguel', 'durante'),
  (36, 'Contrato de atividade terceirizada', 'durante'),
  (37, 'Contrato de dosimetria', 'durante'),
  (38, 'Contrato social registrado em cartório (sociedade simples, associações e fundações)', 'durante'),
  (39, 'Contrato social registrado na Jucesp (ME, EPP e outros)', 'durante'),
  (40, 'Formulário de solicitação de atos de vigilância sanitária — Anexo III', 'durante'),
  (41, 'Formulário de atividade de prestação de serviço de interesse da saúde — Subanexo III.1', 'durante'),
  (42, 'Formulário de equipamentos de interesse da saúde — Subanexo III.2', 'durante'),
  (43, 'Formulário de atividade relacionada a produtos de interesse da saúde — Subanexo III.3', 'durante'),
  (44, 'Parecer da ABOTEC (protesista, ortesista, sapateiro ortopédico)', 'durante'),
  (45, 'Habilitação profissional (conselho de classe ou diploma/certificados)', 'durante'),
  (46, 'Licença sanitária das atividades contratadas (terceirizadas)', 'durante'),
  (47, 'Plano de radioproteção', 'durante'),
  (48, 'Programa de garantia de qualidade', 'durante'),
  (49, 'Registro de especialização correspondente à atividade', 'durante'),
  (51, 'Formulário para credenciamento de unidades públicas dispensadoras (Resolução MS 11/2011)', 'durante'),
  (52, 'LTA — Laudo Técnico de Avaliação de projeto de edificação (publicação do deferimento)', 'durante'),
  (53, 'Licença de instalação ou operação da CETESB, ou protocolo de regularização', 'durante'),
  (54, 'Outorga DAEE', 'durante'),
  (55, 'Contrato entre fabricante/importador e fracionadora', 'durante'),
  (56, 'Laudo laboratorial de potabilidade da água para consumo humano', 'durante'),
  (57, 'Documento da empresa que declara a destituição da responsabilidade técnica', 'durante'),
  (58, 'Certificado de capacitação em Boas Práticas de Fabricação', 'durante'),
  (59, 'Autodeclaração de conformidade físico-funcional (Comunicado CVS-Ditep/Sersa 15/2023)', 'durante'),
  (60, 'Projeto Arquitetônico Simplificado (PAS): ART/RRT do autor, memorial descritivo e peças gráficas do ambiente', 'durante'),
  (61, 'Certificado de calibração de instrumentos de radiometria e testes de qualidade', 'durante'),
  (99, 'Documentos definidos em legislação municipal', 'durante')
on conflict (codigo) do update set nome = excluded.nome, fase = excluded.fase;

insert into public.cnae (codigo, descricao) values
  ('0111-3/01', 'Cultivo de arroz'),
  ('0111-3/02', 'Cultivo de milho'),
  ('0111-3/03', 'Cultivo de trigo'),
  ('0111-3/99', 'Cultivo de outros cereais não especificados anteriormente'),
  ('0112-1/01', 'Cultivo de algodão herbáceo'),
  ('0112-1/02', 'Cultivo de juta'),
  ('0112-1/99', 'Cultivo de outras fibras de lavoura temporária não especificadas anteriormente'),
  ('0113-0/00', 'Cultivo de cana-de-açúcar'),
  ('0114-8/00', 'Cultivo de fumo'),
  ('0115-6/00', 'Cultivo de soja'),
  ('0116-4/01', 'Cultivo de amendoim'),
  ('0116-4/02', 'Cultivo de girassol'),
  ('0116-4/03', 'Cultivo de mamona'),
  ('0116-4/99', 'Cultivo de outras oleaginosas de lavoura temporária não especificadas anteriormente'),
  ('0119-9/01', 'Cultivo de abacaxi'),
  ('0119-9/02', 'Cultivo de alho'),
  ('0119-9/03', 'Cultivo de batata-inglesa'),
  ('0119-9/04', 'Cultivo de cebola'),
  ('0119-9/05', 'Cultivo de feijão'),
  ('0119-9/06', 'Cultivo de mandioca'),
  ('0119-9/07', 'Cultivo de melão'),
  ('0119-9/08', 'Cultivo de melancia'),
  ('0119-9/09', 'Cultivo de tomate rasteiro'),
  ('0119-9/99', 'Cultivo de outras plantas de lavoura temporária não especificadas anteriormente'),
  ('0121-1/01', 'Horticultura, exceto morango'),
  ('0121-1/02', 'Cultivo de morango'),
  ('0122-9/00', 'Cultivo de Flores e Plantas Ornamentais'),
  ('0131-8/00', 'Cultivo de laranja'),
  ('0132-6/00', 'Cultivo de uva'),
  ('0133-4/01', 'Cultivo de açaí'),
  ('0133-4/02', 'Cultivo de banana'),
  ('0133-4/03', 'Cultivo de caju'),
  ('0133-4/04', 'Cultivo de cítricos, exceto laranja'),
  ('0133-4/05', 'Cultivo de coco-da-baía'),
  ('0133-4/06', 'Cultivo de guaraná'),
  ('0133-4/07', 'Cultivo de maçã'),
  ('0133-4/08', 'Cultivo de mamão'),
  ('0133-4/09', 'Cultivo de maracujá'),
  ('0133-4/10', 'Cultivo de manga'),
  ('0133-4/11', 'Cultivo de pêssego'),
  ('0133-4/99', 'Cultivo de frutas de lavoura permanente não especificadas anteriormente'),
  ('0134-2/00', 'Cultivo de café'),
  ('0135-1/00', 'Cultivo de cacau'),
  ('0139-3/01', 'Cultivo de chá-da-índia'),
  ('0139-3/02', 'Cultivo de erva-mate'),
  ('0139-3/03', 'Cultivo de pimenta-do-reino'),
  ('0139-3/04', 'Cultivo de outras plantas para condimento, exceto pimenta-do-reino'),
  ('0139-3/05', 'Cultivo de dendê'),
  ('0139-3/06', 'Cultivo de seringueira'),
  ('0139-3/99', 'Cultivo de outras plantas de lavoura permanente não especificadas anteriormente'),
  ('0141-5/01', 'Produção de sementes certificadas, exceto de forrageiras para pasto'),
  ('0141-5/02', 'Produção de sementes certificadas de forrageiras para formação de pasto'),
  ('0142-3/00', 'Produção de Mudas e Outras Formas De Propagação Vegetal, certificadas'),
  ('0151-2/01', 'Criação de bovinos para corte'),
  ('0151-2/02', 'Criação de bovinos para leite'),
  ('0151-2/03', 'Criação de bovinos, exceto para corte e leite'),
  ('0152-1/01', 'Criação de bufalinos'),
  ('0152-1/02', 'Criação de equinos'),
  ('0152-1/03', 'Criação de asininos e muares'),
  ('0153-9/01', 'Criação de caprinos'),
  ('0153-9/02', 'Criação de ovinos e produção de lã'),
  ('0154-7/00', 'Criação de suínos'),
  ('0155-5/01', 'Criação de frangos para corte'),
  ('0155-5/02', 'Produção de pintos de um dia'),
  ('0155-5/03', 'Criação de outros galináceos, exceto para corte'),
  ('0155-5/04', 'Criação de outras aves, exceto galináceos'),
  ('0155-5/05', 'Produção de ovos'),
  ('0159-8/01', 'Apicultura'),
  ('0159-8/02', 'Criação de Animais De Estimação'),
  ('0159-8/03', 'Criação de escargot'),
  ('0159-8/04', 'Criação de bicho-da-seda'),
  ('0159-8/99', 'Criação de outros animais não especificados anteriormente'),
  ('0161-0/01', 'Serviços de pulverização e controle de pragas agrícolas'),
  ('0161-0/02', 'Serviço de poda de árvores para lavouras'),
  ('0161-0/03', 'Serviço de preparação de terreno, cultivo e colheita'),
  ('0161-0/99', 'atividades de apoio à agricultura não especificadas anteriormente'),
  ('0162-8/01', 'Serviço de inseminação artificial de animais'),
  ('0162-8/02', 'Serviço de fosqueamento de ovinos'),
  ('0162-8/03', 'Serviço de manejo de animais'),
  ('0162-8/99', 'Atividades de apoio à pecuária não especificadas anteriormente'),
  ('0163-6/00', 'Atividades de pós-colheita'),
  ('0170-9/00', 'Caça e serviços relacionados'),
  ('0210-1/01', 'Cultivo de eucalipto'),
  ('0210-1/02', 'Cultivo de acácia-negra'),
  ('0210-1/03', 'Cultivo de pinus'),
  ('0210-1/04', 'Cultivo de teca'),
  ('0210-1/05', 'Cultivo de espécies de madeireiras, exceto eucalipto, acácia-negra, pinus e teca'),
  ('0210-1/06', 'Cultivo de mudas em viveiros florestais'),
  ('0210-1/07', 'Extração de madeira em florestas plantadas'),
  ('0210-1/08', 'Produção de carvão vegetal - florestas plantadas'),
  ('0210-1/09', 'Produção de casca de acácia - negra - florestas plantadas'),
  ('0210-1/99', 'Produção de produtos não-madeireiros não especificados anteriormente em florestas plantadas'),
  ('0220-9/01', 'Extração de madeiras em florestas nativas'),
  ('0220-9/02', 'Produção de carvão vegetal - florestas nativas'),
  ('0220-9/03', 'Coleta de castanha-do-pará em florestas nativas'),
  ('0220-9/04', 'Coleta de látex em florestas nativas'),
  ('0220-9/05', 'Coleta de palmito em florestas nativas'),
  ('0220-9/06', 'Conservação de florestas nativas'),
  ('0220-9/99', 'Coleta de produtos não-madeireiros não especificados anteriormente em florestas nativas'),
  ('0230-6/00', 'Atividades de apoio à produção florestal'),
  ('0311-6/01', 'Pesca de peixes em água salgada'),
  ('0311-6/02', 'Pesca de crustáceos e moluscos em água salgada'),
  ('0311-6/03', 'Coleta de outros produtos marinhos'),
  ('0311-6/04', 'Atividades de apoio à pesca em água salgada'),
  ('0312-4/01', 'Pesca de peixes em água doce'),
  ('0312-4/02', 'Pesca de crustáceos e moluscos em água doce'),
  ('0312-4/03', 'Coleta de outros produtos aquáticos de água doce'),
  ('0312-4/04', 'Atividades de apoio à pesca em água doce'),
  ('0321-3/01', 'Criação de peixes em água salgada e salobra'),
  ('0321-3/02', 'Criação de camarões em água salgada e salobra'),
  ('0321-3/03', 'Criação de ostras e mexilhões em água salgada e salobra'),
  ('0321-3/04', 'Criação de peixes ornamentais em água salgada e salobra'),
  ('0321-3/05', 'Atividades de apoio à aquicultura em água salgada e salobra'),
  ('0321-3/99', 'Cultivos e semicultivos da aquicultura em água salgada e salobra não especificados anteriormente'),
  ('0322-1/01', 'Criação de peixes em água doce'),
  ('0322-1/02', 'Criação de camarões em água doce'),
  ('0322-1/03', 'Criação de ostras e mexilhões em água doce'),
  ('0322-1/04', 'Criação de peixes ornamentais em água doce'),
  ('0322-1/05', 'Ranicultura'),
  ('0322-1/06', 'Criação de jacaré'),
  ('0322-1/07', 'Atividades de apoio à aquicultura em água doce'),
  ('0322-1/99', 'Cultivos e semicultivos da aquicultura em água doce não especificados anteriormente'),
  ('0500-3/01', 'Extração de carvão mineral'),
  ('0500-3/02', 'Beneficiamento de carvão mineral'),
  ('0600-0/01', 'Extração de petróleo e gás natural'),
  ('0600-0/02', 'Extração e beneficiamento de xisto'),
  ('0600-0/03', 'Extração e beneficiamento de areias betuminosas'),
  ('0710-3/01', 'Extração de minério de ferro'),
  ('0710-3/02', 'Pelotização, sinterização e outros beneficiamentos de minério de ferro'),
  ('0721-9/01', 'Extração de minério de alumínio'),
  ('0721-9/02', 'Beneficiamento de minério de alumínio'),
  ('0722-7/01', 'Extração de minério de estanho'),
  ('0722-7/02', 'Beneficiamento de minério de estanho'),
  ('0723-5/01', 'Extração de minério de manganês'),
  ('0723-5/02', 'Beneficiamento de minério de manganês'),
  ('0724-3/01', 'Extração de minério de metais preciosos.'),
  ('0724-3/02', 'Beneficiamento de minério de metais preciosos'),
  ('0725-1/00', 'Extração de minerais radioativos'),
  ('0729-4/01', 'Extração de minérios de nióbio e titânio'),
  ('0729-4/02', 'Extração de minério de tungstênio'),
  ('0729-4/03', 'Extração de minério de níquel'),
  ('0729-4/04', 'Extração de minérios de cobre, chumbo, zinco e de outros minerais metálicos não-ferrosos não especificados anteriormente'),
  ('0729-4/05', 'Beneficiamento de minérios de cobre, chumbo, zinco, níquel e de outros minerais metálicos não-ferrosos não especificados anteriormente'),
  ('0810-0/01', 'Extração de ardósia e beneficiamento associado'),
  ('0810-0/02', 'Extração de granito e beneficiamento associado.'),
  ('0810-0/03', 'Extração de mármore e beneficiamento associado'),
  ('0810-0/04', 'Extração de calcário/dolomita e dolomita e beneficiamento associado'),
  ('0810-0/05', 'Extração de gesso e caulim'),
  ('0810-0/06', 'Extração de areia, cascalho ou pedregulho e beneficiamento associado'),
  ('0810-0/07', 'Extração de argila e beneficiamento associado'),
  ('0810-0/08', 'Extração de saibro e beneficiamento associado'),
  ('0810-0/09', 'Extração de basalto e beneficiamento associado'),
  ('0810-0/10', 'Beneficiamento de gesso e caulim associado à extração'),
  ('0810-0/99', 'Extração e britamento de pedras outros materiais para construção e beneficiamento associado'),
  ('0891-6/00', 'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos'),
  ('0892-4/01', 'Extração de sal marinho'),
  ('0892-4/02', 'Extração de sal-gema'),
  ('0892-4/03', 'Refino e outros tratamentos do sal'),
  ('0893-2/00', 'Extração de gemas'),
  ('0899-1/01', 'Extração de grafita'),
  ('0899-1/02', 'Extração de quartzo'),
  ('0899-1/03', 'Extração de amianto'),
  ('0899-1/99', 'Extração de outros minerais não-metálicos não especificados anteriormente'),
  ('0910-6/00', 'Atividades de apoio à extração de petróleo e gás natural'),
  ('0990-4/01', 'Atividades de apoio à extração de minério de ferro'),
  ('0990-4/02', 'Atividades de apoio à extração de minerais metálicos não ferrosos'),
  ('0990-4/03', 'Atividades de apoio à extração de minerais não- metálicos'),
  ('1011-2/01', 'Frigorífico - Abate de bovinos'),
  ('1011-2/02', 'Frigorífico - Abate de equinos'),
  ('1011-2/03', 'Frigorífico - Abate de ovinos e caprinos'),
  ('1011-2/04', 'Frigorífico - Abate de bubalinos'),
  ('1011-2/05', 'Matadouro - abate de reses sob contrato - exceto abate de suínos'),
  ('1012-1/01', 'Abate de aves'),
  ('1012-1/02', 'Abate de pequenos animais'),
  ('1012-1/03', 'Frigorífico - Abate de suínos'),
  ('1012-1/04', 'Matadouro - abate de suínos sob contrato'),
  ('1013-9/01', 'Fabricação de produtos de carne'),
  ('1013-9/02', 'Preparação de subprodutos do abate'),
  ('1020-1/01', 'Preparação de peixes, crustáceos e moluscos'),
  ('1020-1/02', 'Fabricação de conservas de peixes, crustáceos e moluscos'),
  ('1031-7/00', 'Fabricação de conservas de frutas'),
  ('1032-5/01', 'Fabricação de conservas de palmito'),
  ('1032-5/99', 'Fabricação de conservas de legumes e outros vegetais, exceto palmito'),
  ('1033-3/01', 'Fabricação de sucos concentrados de frutas, hortaliças e de legumes'),
  ('1033-3/02', 'Fabricação de sucos de frutas, hortaliças e legumes, exceto concentrados'),
  ('1041-4/00', 'Fabricação de óleos vegetais em bruto, exceto óleo de milho'),
  ('1042-2/00', 'Fabricação de óleos vegetais refinados, exceto óleo de milho'),
  ('1043-1/00', 'Fabricação de margarina e outras gorduras vegetais e de óleos não comestíveis de animais'),
  ('1051-1/00', 'Preparação de leite'),
  ('1052-0/00', 'Fabricação de laticínios'),
  ('1053-8/00', 'Fabricação de sorvetes e outros gelados comestíveis'),
  ('1061-9/01', 'Beneficiamento de arroz'),
  ('1061-9/02', 'Fabricação de produtos do arroz'),
  ('1062-7/00', 'Moagem de trigo e fabricação de derivados'),
  ('1063-5/00', 'Produção de farinha de mandioca e derivados'),
  ('1064-3/00', 'Fabricação de farinha de milho e derivados, exceto óleos de milho'),
  ('1065-1/01', 'Fabricação de amidos e féculas de vegetais'),
  ('1065-1/02', 'Fabricação de óleo de milho em bruto'),
  ('1065-1/03', 'Fabricação de óleo de milho refinado'),
  ('1066-0/00', 'Fabricação de alimentos para animais'),
  ('1069-4/00', 'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente'),
  ('1071-6/00', 'Fabricação de açúcar em bruto'),
  ('1072-4/01', 'Fabricação de açucar de cana refinado'),
  ('1072-4/02', 'Fabricação de açucar de cereais (dextrose) e de beterraba'),
  ('1081-3/01', 'Beneficiamento de café'),
  ('1081-3/02', 'Torrefação e moagem de café'),
  ('1082-1/00', 'Fabricação de produtos a base de café'),
  ('1091-1/01', 'Fabricação de produtos de panificação industrial'),
  ('1091-1/02', 'Fabricação de produtos de padaria e confeitaria com predominância de produção própria'),
  ('1092-9/00', 'Fabricação de biscoitos e bolachas'),
  ('1093-7/01', 'Fabricação de produtos derivados do cacau e de chocolates'),
  ('1093-7/02', 'Fabricação de frutas cristalizadas, balas e semelhantes'),
  ('1094-5/00', 'Fabricação de massas alimentícias'),
  ('1095-3/00', 'Fabricação de especiarias, molhos, temperos e condimentos'),
  ('1096-1/00', 'Fabricação de alimentos e pratos prontos'),
  ('1099-6/01', 'Fabricação de vinagre'),
  ('1099-6/02', 'Fabricação de pós alimentícios'),
  ('1099-6/03', 'Fabricação de fermentos e leveduras'),
  ('1099-6/04', 'Fabricação de gelo comum'),
  ('1099-6/05', 'Fabricação de produtos para infusão (chá, mate, etc.)'),
  ('1099-6/06', 'Fabricação de adoçantes naturais e artificiais'),
  ('1099-6/07', 'Fabricação de alimentos dietéticos e complementos alimentares'),
  ('1099-6/99', 'Fabricação de outros produtos alimentícios não especificados anteriormente'),
  ('1111-9/01', 'Fabricação de aguardente de cana de açúcar'),
  ('1111-9/02', 'Fabricação de outras aguardentes e bebidas destiladas'),
  ('1112-7/00', 'Fabricação de vinho'),
  ('1113-5/01', 'Fabricação de malte, inclusive malte uísque'),
  ('1113-5/02', 'Fabricação de cervejas e chopes'),
  ('1121-6/00', 'Fabricação de águas envasadas'),
  ('1122-4/01', 'Fabricação de refrigerantes'),
  ('1122-4/02', 'Fabricação de chá mate e outros chás prontos para consumo'),
  ('1122-4/03', 'Fabricação de refrescos, xaropes e pós para refrescos, exceto refrescos de fruta'),
  ('1122-4/04', 'Fabricação de bebidas isotônicas'),
  ('1122-4/99', 'Fabricação de outras bebidas não alcóolicas não especificadas anteriormente'),
  ('1210-7/00', 'Processamento industrial do fumo'),
  ('1220-4/01', 'Fabricação de cigarros'),
  ('1220-4/02', 'Fabricação de cigarrilhas e charutos'),
  ('1220-4/03', 'Fabricação de filtros para cigarros'),
  ('1220-4/99', 'Fabricação de outros produtos de fumo, exceto cigarros, cigarrilhas e charutos'),
  ('1311-1/00', 'Preparação e fiação de fios de algodão'),
  ('1312-0/00', 'Preparação e fiação de fibras têxteis naturais, exceto algodão'),
  ('1313-8/00', 'Fiação de fibras artificiais e sintéticas'),
  ('1314-6/00', 'Fabricação de linhas para costurar e bordar'),
  ('1321-9/00', 'Tecelagem de fios de algodão'),
  ('1322-7/00', 'Tecelagem de fios de fibras têxteis naturais, exceto algodão'),
  ('1323-5/00', 'Tecelagem de fios de fibras artificiais e sintéticas'),
  ('1330-8/00', 'Fabricação de tecidos de malha'),
  ('1340-5/01', 'Estamparia e texturização em fios, tecidos, artefatos têxteis e peças do vestuário'),
  ('1340-5/02', 'Alvejamento, tingimento e torção em fios, tecidos e artigos têxteis e peças do vestuário'),
  ('1340-5/99', 'Outros serviços de acabamento em fios, tecidos, artefatos têxteis e peças do vestuário'),
  ('1351-1/00', 'Fabricação de artefatos têxteis para uso doméstico'),
  ('1352-9/00', 'Fabricação de artefatos de tapeçaria'),
  ('1353-7/00', 'Fabricação de artefatos de cordoaria'),
  ('1354-5/00', 'Fabricação de tecidos especiais, inclusive artefatos'),
  ('1359-6/00', 'Fabricação de outros artefatos têxteis não especificados anteriormente'),
  ('1411-8/01', 'Confecção de roupas íntimas'),
  ('1411-8/02', 'Facção de roupas íntimas'),
  ('1412-6/01', 'Confecção de peças do vestuário, exceto roupas íntimas e as confeccionadas sob medida'),
  ('1412-6/02', 'Confecção, sob medida, de peças do vestuário, exceto roupas íntimas'),
  ('1412-6/03', 'Facção de peças do vestuário, exceto roupas íntimas'),
  ('1413-4/01', 'Confecção de roupas profissionais, exceto sob medida'),
  ('1413-4/02', 'Confecção, sob medida, de roupas profissionais'),
  ('1413-4/03', 'Facção roupas profissionais'),
  ('1414-2/00', 'Fabricação de acessórios do vestuário, exceto para segurança e proteção'),
  ('1421-5/00', 'Fabricação de meias'),
  ('1422-3/00', 'Fabricação de outros artigos do vestuário, produzidos em malharias e tricotagem, exceto meias'),
  ('1510-6/00', 'Curtimento e outras preparações de couro'),
  ('1521-1/00', 'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material'),
  ('1529-7/00', 'Fabricação de outros artefatos de couro não especificados anteriormente'),
  ('1531-9/01', 'Fabricação de calçados de couro'),
  ('1531-9/02', 'Acabamento de calçados de couro sob contrato'),
  ('1532-7/00', 'Fabricação de tênis de qualquer material'),
  ('1533-5/00', 'Fabricação de calçados de material sintético'),
  ('1539-4/00', 'Fabricação de calçados de materiais não especificados anteriormente'),
  ('1540-8/00', 'Fabricação de partes para calçados, de qualquer material'),
  ('1610-2/03', 'Serrarias com desdobramento de madeira em bruto'),
  ('1610-2/04', 'Serrarias sem desdobramento de madeira em bruto - Resserragem'),
  ('1610-2/05', 'Serviço de tratamento de madeira realizado sob contrato'),
  ('1621-8/00', 'Fabricação de madeira laminada e de chapas de madeira compensada, prensada ou aglomerada'),
  ('1622-6/01', 'Fabricação de casas de madeira pré-fabricadas'),
  ('1622-6/02', 'Fabricação de esquadrias de madeira e peças de madeira para instalações industriais e comerciais'),
  ('1622-6/99', 'Fabricação de outros artigos de carpintaria para construção'),
  ('1623-4/00', 'Fabricação de artefatos de tanoaria e embalagens de madeira'),
  ('1629-3/01', 'Fabricação de artefatos diversos de madeira, exceto móveis'),
  ('1629-3/02', 'Fabricação de artefatos diversos de cortiça, bambu, palha, vime e outros materiais trançados, exceto móveis'),
  ('1710-9/00', 'Fabricação de celulose e outras pastas para a fabricação de papel'),
  ('1721-4/00', 'Fabricação de papel'),
  ('1722-2/00', 'Fabricação de papelão liso, cartolina e cartão'),
  ('1731-1/00', 'Fabricação de embalagens de papel'),
  ('1732-0/00', 'Fabricação de embalagens de cartolina e papel cartão'),
  ('1733-8/00', 'Fabricação de chapas de embalagens de papelão ondulado'),
  ('1741-9/01', 'Fabricação de formulários contínuos'),
  ('1741-9/02', 'Fabricação de produtos de papel, cartolina, papel-cartão e papelão ondulado para uso comercial e de escritório'),
  ('1742-7/01', 'Fabricação de fraldas descartáveis'),
  ('1742-7/02', 'Fabricação de absorventes higiênicos'),
  ('1742-7/99', 'Fabricação de produtos de papel para uso doméstico e higiênico sanitário não especificados anteriormente'),
  ('1749-4/00', 'Fabricação de produtos de pastas celulósicas, papel, cartolina, papel-cartão e papelão ondulado não especificados anteriormente'),
  ('1811-3/01', 'Impressão de jornais'),
  ('1811-3/02', 'Impressão de livros, revistas e outras publicações periódicas'),
  ('1812-1/00', 'Impressão de material de segurança'),
  ('1813-0/01', 'Impressão de material para uso publicitário'),
  ('1813-0/99', 'Impressão de material para outros usos'),
  ('1821-1/00', 'Serviços de pré-impressão'),
  ('1822-9/01', 'Serviços de encadernação e plastificação'),
  ('1822-9/99', 'Serviços de acabamentos gráficos, exceto encadernação e plastificação'),
  ('1830-0/01', 'Reprodução de som em qualquer suporte'),
  ('1830-0/02', 'Reprodução de vídeo em qualquer suporte'),
  ('1830-0/03', 'Reprodução de software em qualquer suporte'),
  ('1910-1/00', 'Coquerias'),
  ('1921-7/00', 'fabricação de produtos do refino de petróleo'),
  ('1922-5/01', 'Formulação de combustíveis.'),
  ('1922-5/02', 'Rerrefino de óleos lubrificantes.'),
  ('1922-5/99', 'Fabricação de outros produtos derivados do petróleo, exceto produtos do refino'),
  ('1931-4/00', 'Fabricação de álcool'),
  ('1932-2/00', 'Fabricação de biocombustíveis, exceto álcool'),
  ('2011-8/00', 'Fabricação de cloro e álcalis'),
  ('2012-6/00', 'Fabricação de intermediários para fertilizantes'),
  ('2013-4/01', 'Fabricação de adubos e fertilizantes organominerais'),
  ('2013-4/02', 'Fabricação de adubos e fertilizantes, exceto organominerais'),
  ('2014-2/00', 'Fabricação de gases industriais'),
  ('2019-3/01', 'Elaboração de combustíveis nucleares'),
  ('2019-3/99', 'Fabricação de outros produtos químicos inorgânicos não especificados anteriormente'),
  ('2021-5/00', 'Fabricação de produtos petroquímicos básicos'),
  ('2022-3/00', 'Fabricação de intermediários para plastificantes, resinas e fibras'),
  ('2029-1/00', 'Fabricação de outros produtos químicos orgânicos não especificados'),
  ('2031-2/00', 'Fabricação de resinas termoplásticas'),
  ('2032-1/00', 'Fabricação de resinas termofixas'),
  ('2033-9/00', 'Fabricação de elastômeros'),
  ('2040-1/00', 'Fabricação de fibras artificiais e sintéticas'),
  ('2051-7/00', 'Fabricação de defensivos agrícolas'),
  ('2052-5/00', 'Fabricação de desinfestantes domissanitários'),
  ('2061-4/00', 'Fabricação de sabões e detergentes sintéticos'),
  ('2062-2/00', 'Fabricação de produtos de limpeza e polimento'),
  ('2063-1/00', 'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal'),
  ('2071-1/00', 'Fabricação de tintas, vernizes, esmaltes e lacas'),
  ('2072-0/00', 'Fabricação de tintas de impressão'),
  ('2073-8/00', 'Fabricação de impermeabilizantes, solventes e produtos afins'),
  ('2091-6/00', 'Fabricação de adesivos e selantes'),
  ('2092-4/01', 'Fabricação de pólvoras, explosivos e detonantes'),
  ('2092-4/02', 'Fabricação de artigos pirotécnicos'),
  ('2092-4/03', 'Fabricação de fósforos de segurança'),
  ('2093-2/00', 'Fabricação de aditivos de uso industrial'),
  ('2094-1/00', 'Fabricação de catalisadores'),
  ('2099-1/01', 'Fabricação de chapas, filmes, papéis e outros materiais e produtos químicos para fotografia'),
  ('2099-1/99', 'Fabricação de outros produtos químicos não especificados anteriormente'),
  ('2110-6/00', 'Fabricação de produtos farmoquímicos'),
  ('2121-1/01', 'Fabricação de medicamentos alopáticos para uso humano'),
  ('2121-1/02', 'Fabricação de medicamentos homeopáticos para uso humano'),
  ('2121-1/03', 'Fabricação de medicamentos fitoterápicos para uso humano'),
  ('2122-0/00', 'Fabricação de medicamentos para uso veterinário'),
  ('2123-8/00', 'Fabricação de preparações farmacêuticas'),
  ('2211-1/00', 'Fabricação de pneumáticos e de câmaras-de-ar'),
  ('2212-9/00', 'Reforma de pneumáticos usados'),
  ('2219-6/00', 'Fabricação de artefatos de borracha não especificados anteriormente'),
  ('2221-8/00', 'Fabricação de laminados planos e tubulares de material plástico'),
  ('2222-6/00', 'Fabricação de embalagem de material plástico'),
  ('2223-4/00', 'Fabricação de tubos e acessórios de material plástico para uso na construção'),
  ('2229-3/01', 'Fabricação de artefatos de material plástico para uso pessoal e doméstico'),
  ('2229-3/02', 'Fabricação de artefatos de material plástico para usos industriais'),
  ('2229-3/03', 'Fabricação de artefatos de material plástico para uso na construção, exceto tubos e acessórios'),
  ('2229-3/99', 'Fabricação de artefatos de material plástico para outros usos não especificados anteriormente'),
  ('2311-7/00', 'Fabricação de vidro plano e de segurança'),
  ('2312-5/00', 'Fabricação de embalagens de vidro'),
  ('2319-2/00', 'Fabricação de artigos de vidro'),
  ('2320-6/00', 'Fabricação de cimento'),
  ('2330-3/01', 'Fabricação de estruturas pré-moldadas de concreto armado, em série ou sob encomenda'),
  ('2330-3/02', 'Fabricação de artefatos de cimento para uso na construção'),
  ('2330-3/03', 'Fabricação de artefatos de fibrocimento para uso na construção'),
  ('2330-3/04', 'Fabricação de casas pré-moldadas de concreto'),
  ('2330-3/05', 'Preparação de massa de concreto e argamassa para construção'),
  ('2330-3/99', 'Fabricação de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes'),
  ('2341-9/00', 'Fabricação de produtos cerâmicos refratários'),
  ('2342-7/01', 'Fabricação de azulejos e pisos'),
  ('2342-7/02', 'Fabricação de artefatos de cerâmica ou barro cozido para uso na construção exceto azulejos e pisos.'),
  ('2349-4/01', 'Fabricação de material sanitário de cerâmica'),
  ('2349-4/99', 'Fabricação de produtos cerâmicos não-refratários não especificados anteriormente'),
  ('2391-5/01', 'Britamento de pedras, exceto associado a extração'),
  ('2391-5/02', 'Aparelhamento de pedras para construção, exceto associado à extração'),
  ('2391-5/03', 'Aparelhamento de placas e execução de trabalhos em mármore, granito, ardósia e outras pedras'),
  ('2392-3/00', 'Fabricação de cal e gesso'),
  ('2399-1/01', 'Decoração, lapidação, gravação, vitrificação e outros trabalhos em cerâmica, louça e vidro e cristal'),
  ('2399-1/02', 'Fabricação de abrasivos'),
  ('2399-1/99', 'Fabricação de outros produtos de minerais não-metálicos não especificados anteriormente'),
  ('2411-3/00', 'Produção de ferro-gusa.'),
  ('2412-1/00', 'Produção de ferroligas.'),
  ('2421-1/00', 'Produção de semiacabados de aço.'),
  ('2422-9/01', 'Produção de laminados planos de aço ao carbono, revestidos ou não'),
  ('2422-9/02', 'Produção de laminados planos de aços especiais.'),
  ('2423-7/01', 'Produção de tubos e canos sem costura.'),
  ('2423-7/02', 'Produção de laminados longos de aço, exceto tubos'),
  ('2424-5/01', 'Produção de arames de aço.'),
  ('2424-5/02', 'Produção de relaminados, trefilados e perfilados de aço, exceto arames'),
  ('2431-8/00', 'Fabricação de tubos de aço com costura'),
  ('2439-3/00', 'Fabricação de outros tubos de ferro e aço'),
  ('2441-5/01', 'Produção de alumínio e suas ligas em formas primárias'),
  ('2441-5/02', 'Produção de laminados de alumínio'),
  ('2442-3/00', 'Metalurgia dos metais preciosos'),
  ('2443-1/00', 'Metalurgia do cobre'),
  ('2449-1/01', 'Produção de zinco em formas primárias'),
  ('2449-1/02', 'Produção de laminados de zinco'),
  ('2449-1/03', 'Produção de soldas e ânodos para galvanoplastia'),
  ('2449-1/99', 'Metalurgia de outros metais não-ferrosos e suas ligas não especificadas anteriormente'),
  ('2451-2/00', 'Fundição de ferro e aço'),
  ('2452-1/00', 'Produção de metais não-ferrosos e suas ligas'),
  ('2511-0/00', 'Fabricação de estruturas metálicas'),
  ('2512-8/00', 'Fabricação de esquadrias de metal'),
  ('2513-6/00', 'Fabricação de obras de caldeiraria pesada'),
  ('2521-7/00', 'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central'),
  ('2522-5/00', 'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos'),
  ('2531-4/01', 'Produção de forjados de aço'),
  ('2531-4/02', 'Produção de forjados de metais não-ferrosos e suas ligas'),
  ('2532-2/01', 'Produção de artefatos estampados de metal'),
  ('2532-2/02', 'Metalurgia do pó'),
  ('2539-0/01', 'Serviços de usinagem, tornearia e solda'),
  ('2539-0/02', 'Serviços de tratamentos e revestimento em metais'),
  ('2541-1/00', 'Fabricação de artigos de cutelaria'),
  ('2542-0/00', 'Fabricação de artigos de serralheria exceto esquadrias'),
  ('2543-8/00', 'Fabricação de ferramentas'),
  ('2550-1/01', 'Fabricação de equipamento bélico pesado'),
  ('2550-1/02', 'Fabricação de armas de fogo e munições'),
  ('2591-8/00', 'Fabricação de embalagens metálicas'),
  ('2592-6/01', 'Fabricação de produtos de trefilados de metal padronizados'),
  ('2592-6/02', 'Fabricação de outros produtos de trefilados de metal, exceto padronizados'),
  ('2593-4/00', 'Fabricação de artigos de metal para uso doméstico e pessoal'),
  ('2599-3/01', 'Serviços de confecção de armações metálicas para a construção'),
  ('2599-3/02', 'Serviço de corte e dobra de metais'),
  ('2599-3/99', 'Fabricação de outros produtos de metal não especificados anteriormente'),
  ('2610-8/00', 'Fabricação de componentes eletrônicos'),
  ('2621-3/00', 'Fabricação de equipamentos de informática'),
  ('2622-1/00', 'Fabricação de periféricos para equipamentos de informática'),
  ('2631-1/00', 'Fabricação de equipamentos transmissores de comunicação, peças e acessórios'),
  ('2632-9/00', 'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação, peças e acessórios'),
  ('2640-0/00', 'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo'),
  ('2651-5/00', 'Fabricação de aparelhos e equipamentos de medida, teste e controle'),
  ('2652-3/00', 'Fabricação de cronômetros e relógios'),
  ('2660-4/00', 'Fabricação de aparelhos eletromédicos e eletro-terapeuticos e equipamentos de irradiação'),
  ('2670-1/01', 'Fabricação de equipamentos e instrumentos ópticos, peças e acessórios'),
  ('2670-1/02', 'Fabricação de aparelhos fotográficos e cinematográficos, peças e acessórios'),
  ('2680-9/00', 'Fabricação de mídias virgens, magnéticas e ópticas'),
  ('2710-4/01', 'Fabricação de geradores de corrente contínua e alternada, peças e acessórios'),
  ('2710-4/02', 'Fabricação de transformadores, indutores, conversores, sincronizadores e semelhantes, peças e acessórios'),
  ('2710-4/03', 'Fabricação de motores elétricos, peças e acessórios'),
  ('2721-0/00', 'Acumuladores elétricos, exceto para veículos automotores'),
  ('2722-8/01', 'Fabricação de baterias e acumuladores para veículos automotores'),
  ('2722-8/02', 'Recondicionamento de baterias e acumuladores para veículos automotores'),
  ('2731-7/00', 'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica'),
  ('2732-5/00', 'Fabricação de material elétrico para instalações em circuito de consumo'),
  ('2733-3/00', 'Fabricação de fios, cabos e condutores elétricos isolados'),
  ('2740-6/01', 'Fabricação de lâmpadas'),
  ('2740-6/02', 'Fabricação de luminárias e outros equipamentos de iluminação'),
  ('2751-1/00', 'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico, peças e acessórios'),
  ('2759-7/01', 'Fabricação de aparelhos elétricos de uso pessoal, peças e acessórios'),
  ('2759-7/99', 'Fabricação de outros aparelhos eletrodomésticos não especificados anteriormente, peças e acessórios'),
  ('2790-2/01', 'Fabricação de eletrodos, contatos e outros artigos de carvão e grafita para uso elétrico, eletroímãs e isoladores'),
  ('2790-2/02', 'Fabricação de Equipamentos sinalização e alarme'),
  ('2790-2/99', 'Fabricação de outros equipamentos e aparelhos elétricos não especificados anteriormente'),
  ('2811-9/00', 'Fabricação de motores e turbinas, peças e acessórios, exceto para aviões e veículos rodoviários'),
  ('2812-7/00', 'Fabricação de equipamentos hidráulicos e pneumáticos, peças e acessórios, exceto válvulas'),
  ('2813-5/00', 'Fabricação de válvulas, registros e dispositivos semelhantes, peças e acessórios'),
  ('2814-3/01', 'Fabricação de componentes para uso industrial, peças e acessórios'),
  ('2814-3/02', 'Fabricação de compressores para uso não industrial, peças e acessórios'),
  ('2815-1/01', 'Fabricação de rolamentos para fins industriais'),
  ('2815-1/02', 'Fabricação de equipamentos de transmissão para fins industriais, exceto rolamentos'),
  ('2821-6/01', 'Fabricação de fornos industriais, aparelhos e equipamentos não-elétricos para instalações térmicas, peças e acessórios'),
  ('2821-6/02', 'Fabricação de estufas e fornos elétricos para fins industriais, peças e acessórios'),
  ('2822-4/01', 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de pessoas e acessórios'),
  ('2822-4/02', 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas, peças e acessórios'),
  ('2823-2/00', 'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial, peças e acessórios'),
  ('2824-1/01', 'Fabricação de aparelhos equipamentos de ar condicionado para uso industrial'),
  ('2824-1/02', 'Fabricação de aparelhos e equipamentos de ar condicionado para uso não-industrial'),
  ('2825-9/00', 'Fabricação de máquinas e equipamentos para saneamento básico e ambiental, peças e acessórios'),
  ('2829-1/01', 'Fabricação de máquinas de escrever e calcular e outros equipamentos não-eletrônicos para escritório, peças e acessórios'),
  ('2829-1/99', 'Fabricação de outras máquinas e equipamentos, de uso geral, não especificados anteriormente, peças e acessórios'),
  ('2831-3/00', 'Fabricação de tratores agrícolas, peças e acessórios'),
  ('2832-1/00', 'Fabricação de equipamentos para irrigação agrícola, peças e acessórios'),
  ('2833-0/00', 'Fabricação de máquinas e equipamentos para a agricultura e pecuária, peças e acessórios, exceto para irrigação'),
  ('2840-2/00', 'Fabricação de máquinas-ferramenta, peças e acessórios'),
  ('2851-8/00', 'Fabricação de máquinas e equipamentos para prospecção e extração de petróleo, peças e acessórios'),
  ('2852-6/00', 'Fabricação de outras máquinas e equipamentos para uso na extração mineral, peças e acessórios, exceto na extração de petróleo'),
  ('2853-4/00', 'Fabricação de tratores, peças e acessórios, exceto agrícolas'),
  ('2854-2/00', 'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, peças e acessórios, exceto tratores'),
  ('2861-5/00', 'Fabricação de máquinas para a indústria metalúrgica, inclusive peças - exceto máquinas-ferramenta'),
  ('2862-3/00', 'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo, peças e acessórios'),
  ('2863-1/00', 'Fabricação de máquinas e equipamentos para a indústria têxtil, peças e acessórios'),
  ('2864-0/00', 'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados, peças e acessórios'),
  ('2865-8/00', 'Fabricação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos, peças e acessórios'),
  ('2866-6/00', 'Fabricação de máquinas e equipamentos para indústria do plástico, peças e acessórios'),
  ('2869-1/00', 'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente, peças e acessórios'),
  ('2910-7/01', 'Fabricação de automóveis, camionetas e utilitários'),
  ('2910-7/02', 'Fabricação de chassis com motor para automóveis, camionetas e utilitários'),
  ('2910-7/03', 'Fabricação de motores para automóveis, camionetas e utilitários'),
  ('2920-4/01', 'Fabricação de caminhões e ônibus'),
  ('2920-4/02', 'Fabricação de motores para caminhões e ônibus'),
  ('2930-1/01', 'Fabricação de cabines, carrocerias e reboques para caminhões'),
  ('2930-1/02', 'Fabricação de carrocerias para ônibus'),
  ('2930-1/03', 'Fabricação de cabines, carrocerias e reboques para outros veículos automotores, exceto caminhões e ônibus'),
  ('2941-7/00', 'Fabricação de peças e acessórios para o sistema motor de veículos automotores'),
  ('2942-5/00', 'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores'),
  ('2943-3/00', 'Fabricação de peças e acessórios para o sistema de freios de veículos automotores'),
  ('2944-1/00', 'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores'),
  ('2945-0/00', 'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias'),
  ('2949-2/01', 'Fabricação de bancos e estofados para veículos automotores'),
  ('2949-2/99', 'Fabricação de peças e acessórios para veículos automotores, não classificadas anteriormente'),
  ('2950-6/00', 'Recondicionamento ou recuperação de motores para veículos automotores'),
  ('3011-3/01', 'Construção e reparação de embarcações de grande porte'),
  ('3011-3/02', 'Construção de embarcações para uso comercial e para usos especiais - exceto de grande porte'),
  ('3012-1/00', 'Construção de embarcações para esporte e lazer'),
  ('3031-8/00', 'Fabricação de locomotivas, vagões e outros materiais rodantes'),
  ('3032-6/00', 'Fabricação de peças e acessórios para veículos ferroviários'),
  ('3041-5/00', 'Fabricação de aeronaves'),
  ('3042-3/00', 'Fabricação de turbinas, motores e outros componentes e peças para aeronaves'),
  ('3050-4/00', 'Fabricação de veículos militares de combate'),
  ('3091-1/01', 'Fabricação de motocicletas'),
  ('3091-1/02', 'Fabricação de peças e acessórios para motocicletas'),
  ('3092-0/00', 'Fabricação de bicicletas e triciclos não motorizados, peças e acessórios'),
  ('3099-7/00', 'Fabricação de equipamentos de transporte não especificados anteriormente'),
  ('3101-2/00', 'Fabricação de móveis com predominância de madeira'),
  ('3102-1/00', 'Fabricação de móveis com predominância de metal'),
  ('3103-9/00', 'Fabricação de móveis de outros materiais, exceto madeira e metal'),
  ('3104-7/00', 'Fabricação de colchões'),
  ('3211-6/01', 'Lapidação de gemas'),
  ('3211-6/02', 'Fabricação de artefatos de joalheria e ourivesaria'),
  ('3211-6/03', 'Cunhagem de moedas e medalhas'),
  ('3212-4/00', 'Fabricação de bijuterias e artefatos semelhantes'),
  ('3220-5/00', 'Fabricação de instrumentos musicais, peças e acessórios'),
  ('3230-2/00', 'Fabricação de artefatos para pesca e esporte'),
  ('3240-0/01', 'Fabricação de jogos eletrônicos'),
  ('3240-0/02', 'Fabricação de mesas de bilhar, de sinuca e acessórios não associada à locação'),
  ('3240-0/03', 'Fabricação de mesas de bilhar, de sinuca e acessórios associada à locação'),
  ('3240-0/99', 'Fabricação de outros brinquedos e jogos recreativos não especificados anteriormente'),
  ('3250-7/01', 'Fabricação de instrumentos não eletrônicos e utensílios para uso médico, cirúrgico, odontológico e de laboratório'),
  ('3250-7/02', 'Fabricação de mobiliário para uso médico, cirúrgico, odontológico e de laboratório'),
  ('3250-7/03', 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, sob encomenda'),
  ('3250-7/04', 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, exceto sob encomenda'),
  ('3250-7/05', 'Fabricação de materiais para medicina e odontologia'),
  ('3250-7/06', 'Serviços de prótese dentária'),
  ('3250-7/07', 'Fabricação de artigos ópticos'),
  ('3250-7/09', 'Serviço de laboratório óptico'),
  ('3291-4/00', 'Fabricação de escovas, pincéis e vassouras'),
  ('3292-2/01', 'Fabricação de roupas de proteção e segurança e resistentes a fogo'),
  ('3292-2/02', 'Fabricação de equipamentos e acessórios para segurança pessoal e profissional'),
  ('3299-0/01', 'Fabricação de guarda-chuvas e similares'),
  ('3299-0/02', 'Fabricação de canetas, lápis e outros artigos para escritório'),
  ('3299-0/03', 'Fabricação de letras, letreiros e placas de qualquer material, exceto luminosos'),
  ('3299-0/04', 'Fabricação de painéis e letreiros luminosos'),
  ('3299-0/05', 'Fabricação de aviamentos para costura'),
  ('3299-0/06', 'Fabricação de velas, inclusive decorativas'),
  ('3299-0/99', 'Fabricação de produtos diversos não especificados anteriormente'),
  ('3311-2/00', 'Manutenção e reparação de tanques, reservatórios metálicos e caldeiras, exceto para veículos'),
  ('3312-1/02', 'Manutenção e reparação de aparelhos e instrumentos de medida, teste e controle'),
  ('3312-1/03', 'Manutenção e reparação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação'),
  ('3312-1/04', 'Manutenção e reparação de equipamentos e instrumentos ópticos'),
  ('3313-9/01', 'Manutenção e reparação de geradores, transformadores e motores elétricos'),
  ('3313-9/02', 'Manutenção e reparação de baterias e acumuladores elétricos, exceto para veículos'),
  ('3313-9/99', 'Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente'),
  ('3314-7/01', 'Manutenção e reparação de máquinas motrizes não- elétricas'),
  ('3314-7/02', 'Manutenção e reparação de equipamentos hidráulicos e pneumáticos, exceto válvulas'),
  ('3314-7/03', 'Manutenção e reparação de válvulas industriais'),
  ('3314-7/04', 'Manutenção e reparação de compressores.'),
  ('3314-7/05', 'Manutenção e reparação de equipamentos de transmissão para fins industriais'),
  ('3314-7/06', 'Manutenção e reparação de máquinas, aparelhos e equipamentos para instalações térmicas'),
  ('3314-7/07', 'Manutenção e reparação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial'),
  ('3314-7/08', 'Manutenção e reparação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas'),
  ('3314-7/09', 'Manutenção, reparação de máquinas de escrever, calcular e de outros equipamentos não-eletrônicos para escritório'),
  ('3314-7/10', 'Manutenção e reparação de máquinas e equipamentos para uso geral não especificados anteriormente'),
  ('3314-7/11', 'Manutenção e reparação de máquinas e equipamentos para agricultura e pecuárias'),
  ('3314-7/12', 'Manutenção e reparação de tratores agrícolas'),
  ('3314-7/13', 'Manutenção e reparação de máquinas-ferramenta'),
  ('3314-7/14', 'Manutenção e reparação de maquinas e equipamentos para a prospecção e extração de petróleo'),
  ('3314-7/15', 'Manutenção e reparação de máquinas e equipamentos de uso na extração mineral exceto na extração de petróleo'),
  ('3314-7/16', 'Manutenção e reparação de tratores, exceto agrícolas'),
  ('3314-7/17', 'Manutenção e reparação de máquinas e equipamentos de terraplenagem, pavimentação e construção, exceto tratores'),
  ('3314-7/18', 'Manutenção e reparação de máquinas para indústria metalúrgica, exceto máquinas-ferramenta'),
  ('3314-7/19', 'Manutenção e reparação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo'),
  ('3314-7/20', 'Manutenção e reparação de máquinas e equipamentos para a indústria têxtil, do vestuário, do couro e calçados'),
  ('3314-7/21', 'Manutenção e reparação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos'),
  ('3314-7/22', 'Manutenção e reparação de máquinas e aparelhos para a indústria do plástico'),
  ('3314-7/99', 'Manutenção e reparação de outras máquinas e equipamentos para usos industriais não especificados anteriormente'),
  ('3315-5/00', 'Manutenção e reparação de veículos ferroviários'),
  ('3316-3/01', 'Manutenção e reparação de aeronaves, exceto a manutenção na pista'),
  ('3316-3/02', 'Manutenção de aeronaves na pista'),
  ('3317-1/01', 'Manutenção e reparação de embarcações e estruturas flutuantes'),
  ('3317-1/02', 'Manutenção e reparação de embarcações para esporte e lazer'),
  ('3319-8/00', 'Manutenção e reparação de equipamentos e produtos não especificados anteriormente'),
  ('3321-0/00', 'Instalação de máquinas e equipamentos industriais'),
  ('3329-5/01', 'Serviços de montagem de móveis de qualquer material'),
  ('3329-5/99', 'Instalação de outros equipamentos não especificados anteriormente'),
  ('3511-5/01', 'Geração de energia elétrica'),
  ('3511-5/02', 'Atividades de coordenação e controle da operação da geração e transmissão de energia elétrica'),
  ('3512-3/00', 'Transmissão de energia elétrica.'),
  ('3513-1/00', 'Comércio atacadista de energia elétrica'),
  ('3514-0/00', 'Distribuição de energia elétrica.'),
  ('3520-4/01', 'Produção de gás; processamento de gás natural'),
  ('3520-4/02', 'Distribuição de combustíveis gasosos por redes urbanas'),
  ('3530-1/00', 'Produção e distribuição de vapor; água quente e ar condicionado'),
  ('3600-6/01', 'Captação, tratamento e distribuição de água'),
  ('3600-6/02', 'Distribuição de água por caminhões'),
  ('3701-1/00', 'Gestão de redes de esgoto'),
  ('3702-9/00', 'Atividades relacionadas a esgoto - exceto a gestão de redes'),
  ('3811-4/00', 'Coleta de resíduos não perigosos'),
  ('3812-2/00', 'Coleta de Resíduos Perigosos'),
  ('3821-1/00', 'Tratamento e disposição de resíduos não perigosos'),
  ('3822-0/00', 'Tratamento e disposição de Resíduos Perigosos'),
  ('3831-9/01', 'Recuperação de sucatas de alumínio'),
  ('3831-9/99', 'Recuperação de materiais metálicos - exceto alumínio'),
  ('3832-7/00', 'Recuperação de materiais plásticos'),
  ('3839-4/01', 'Usina de compostagem'),
  ('3839-4/99', 'Recuperação de materiais não especificados anteriormente'),
  ('3900-5/00', 'Descontaminação e outros serviços de gestão de resíduos'),
  ('4110-7/00', 'Incorporação de empreendimentos imobiliários'),
  ('4120-4/00', 'Construção de edifícios'),
  ('4211-1/01', 'Construções de rodovias e ferrovias'),
  ('4211-1/02', 'Pintura para sinalização em pistas rodoviárias e aeroportos'),
  ('4212-0/00', 'Construção de obras de arte especiais'),
  ('4213-8/00', 'Obras de urbanização - ruas, praças e calçadas'),
  ('4221-9/01', 'Construção de barragens e represas para geração de energia elétrica'),
  ('4221-9/02', 'Construção de estações e redes de distribuição de energia elétrica'),
  ('4221-9/03', 'Manutenção de redes de distribuição de energia elétrica'),
  ('4221-9/04', 'Construção de estações e redes de telecomunicações'),
  ('4221-9/05', 'Manutenção de estações e redes de telecomunicações'),
  ('4222-7/01', 'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas, exceto obras de irrigação'),
  ('4222-7/02', 'Obras de irrigação'),
  ('4223-5/00', 'Construção de redes de transportes por dutos, exceto para água e esgoto'),
  ('4291-0/00', 'Obras portuárias, marítimas e fluviais'),
  ('4292-8/01', 'Montagem de estruturas metálicas'),
  ('4292-8/02', 'Obras de montagem industrial'),
  ('4299-5/01', 'Construção de instalações esportivas e recreativas'),
  ('4299-5/99', 'Outras obras de engenharia civil não especificadas anteriormente'),
  ('4311-8/01', 'Demolição de edifícios e outras estruturas'),
  ('4311-8/02', 'Preparação de canteiro e limpeza de terreno'),
  ('4312-6/00', 'Perfurações e sondagens'),
  ('4313-4/00', 'Obras de terraplenagem'),
  ('4319-3/00', 'Serviços de preparação do terreno não especificados anteriormente'),
  ('4321-5/00', 'Instalação e manutenção elétrica'),
  ('4322-3/01', 'Instalações hidráulicas, sanitárias e de gás'),
  ('4322-3/02', 'Instalação e manutenção de sistemas centrais de ar condicionado, de ventilação e refrigeração'),
  ('4322-3/03', 'Instalações de sistema de prevenção contra incêndio'),
  ('4329-1/01', 'Instalação de painéis publicitários'),
  ('4329-1/02', 'Instalação de equipamentos para orientação a navegação marítima fluvial e lacustre'),
  ('4329-1/03', 'Instalação, manutenção e reparação de elevadores, escadas e esteiras rolantes, exceto de fabricação própria'),
  ('4329-1/04', 'Montagem e instalação de sistemas e equipamentos de iluminação e sinalização em vias públicas, portos e aeroportos'),
  ('4329-1/05', 'Tratamentos térmicos, acústicos ou de vibração'),
  ('4329-1/99', 'Outras obras de instalações em construções não especificadas anteriormente'),
  ('4330-4/01', 'Impermeabilização em obras de engenharia civil'),
  ('4330-4/02', 'Instalação de portas, janelas, tetos, divisórias e armários embutidos de qualquer material'),
  ('4330-4/03', 'Obras de acabamento em gesso e estuque'),
  ('4330-4/04', 'Serviços de pintura em edificações em geral'),
  ('4330-4/05', 'Aplicação de revestimentos e de resinas em interiores e exteriores'),
  ('4330-4/99', 'Outras obras de acabamento de construção'),
  ('4391-6/00', 'Obras de fundações'),
  ('4399-1/01', 'Administração de obras'),
  ('4399-1/02', 'Montagem e desmontagem de andaimes e outras estruturas temporárias'),
  ('4399-1/03', 'Obras de alvenaria'),
  ('4399-1/04', 'Serviços de operação e fornecimento de equipamentos para transporte e elevação de cargas e pessoas para uso em obras'),
  ('4399-1/05', 'Perfuração e construção de poços de água'),
  ('4399-1/99', 'Serviços especializados para construção não especificados anteriormente'),
  ('4511-1/01', 'Comércio a varejo de automóveis, camionetas e utilitários novos'),
  ('4511-1/02', 'Comércio a varejo de automóveis, camionetas e utilitários usados'),
  ('4511-1/03', 'Comércio por atacado de automóveis, camionetas e utilitários, novos e usados'),
  ('4511-1/04', 'Comércio por atacado de caminhões novos e usados'),
  ('4511-1/05', 'Comércio por atacado de reboques e semirreboques novos e usados'),
  ('4511-1/06', 'Comércio por atacado de ônibus e micro-ônibus novos e usados'),
  ('4512-9/01', 'Representantes comerciais e agentes do comércio de veículos automotores'),
  ('4512-9/02', 'Comércio sob consignação de veículos automotores'),
  ('4520-0/01', 'Serviços de manutenção e reparação mecânica de veículos automotores'),
  ('4520-0/02', 'Serviços de lanternagem ou funilaria e pintura de veículos automotores'),
  ('4520-0/03', 'Serviços de manutenção e reparação elétrica de veículos automotores'),
  ('4520-0/04', 'Serviços de alinhamento e balanceamento de veículos automotores'),
  ('4520-0/05', 'Serviços de lavagem, lubrificação e polimento de veículos automotores'),
  ('4520-0/06', 'Serviços de borracharia para veículos automotores'),
  ('4520-0/07', 'Serviços de instalação, manutenção e reparação de acessórios para veículos automotores'),
  ('4520-0/08', 'Serviços de capotaria'),
  ('4530-7/01', 'Comércio por atacado de peças e acessórios novos para veículos automotores'),
  ('4530-7/02', 'Comércio por atacado de pneumáticos e câmaras-de-ar'),
  ('4530-7/03', 'Comércio a varejo de peças e acessórios novos para veículos automotores'),
  ('4530-7/04', 'Comércio a varejo de peças e acessórios usados para veículos automotores'),
  ('4530-7/05', 'Comércio a varejo de pneumáticos e câmaras- de- ar'),
  ('4530-7/06', 'Representantes comerciais e agentes do comércio de peças e acessórios novos e usados para veículos automotores'),
  ('4541-2/01', 'Comércio por atacado de motocicletas e motonetas'),
  ('4541-2/02', 'Comércio por atacado de peças e acessórios para motocicletas e motonetas'),
  ('4541-2/03', 'Comércio a varejo de motocicletas e motonetas novas'),
  ('4541-2/04', 'Comércio a varejo de motocicletas e motonetas usadas'),
  ('4541-2/06', 'Comércio a varejo de peças e acessórios novos para motocicletas e motonetas'),
  ('4541-2/07', 'Comércio a varejo de peças e acessórios usados para motocicletas e motonetas'),
  ('4542-1/01', 'Representantes comerciais e agentes do comércio de motocicletas e motonetas, peças e acessórios'),
  ('4542-1/02', 'Comércio sob consignação de motocicletas e motonetas'),
  ('4543-9/00', 'Manutenção e reparação de motocicletas e motonetas'),
  ('4611-7/00', 'Representantes comerciais e agentes do comércio de matérias primas agrícolas, animais vivos'),
  ('4612-5/00', 'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos'),
  ('4613-3/00', 'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens'),
  ('4614-1/00', 'Representantes comerciais e agentes do comércio de máquinas, equipamentos embarcações e aeronaves'),
  ('4615-0/00', 'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico'),
  ('4616-8/00', 'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem'),
  ('4617-6/00', 'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo'),
  ('4618-4/01', 'Representantes comerciais e agentes do comércio de medicamentos, cosméticos e produtos de perfumaria'),
  ('4618-4/02', 'Representantes comerciais e agentes do comércio de instrumentos e materiais odonto-médico hospitalares'),
  ('4618-4/03', 'Representantes comerciais e agentes do comércio de jornais, revistas e outras publicações'),
  ('4618-4/99', 'Outros representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente'),
  ('4619-2/00', 'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado'),
  ('4621-4/00', 'Comércio atacadista de café em grão'),
  ('4622-2/00', 'Comércio atacadista de soja'),
  ('4623-1/01', 'Comércio atacadista de animais vivos'),
  ('4623-1/02', 'Comércio atacadista de couros, lãs, peles e outros subprodutos não-comestíveis de origem animal'),
  ('4623-1/03', 'Comércio atacadista de algodão'),
  ('4623-1/04', 'Comércio Atacadista de fumo em folha não beneficiado'),
  ('4623-1/05', 'Comércio atacadista de cacau'),
  ('4623-1/06', 'Comércio atacadista de sementes, flores, plantas e gramas'),
  ('4623-1/07', 'Comércio atacadista de sisal'),
  ('4623-1/08', 'Comércio atacadista de matérias-primas agrícolas com atividade de fracionamento e acondicionamento associada'),
  ('4623-1/09', 'Comércio atacadista de alimentos para animais'),
  ('4623-1/99', 'Comércio atacadista de matérias-primas agrícolas não especificadas anteriormente'),
  ('4631-1/00', 'Comércio atacadista de leite e laticínios'),
  ('4632-0/01', 'Comércio atacadista de cereais e leguminosas - beneficiados'),
  ('4632-0/02', 'Comércio atacadista de farinhas, amidos e féculas'),
  ('4632-0/03', 'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas com atividade de fracionamento e acondicionamento associada'),
  ('4633-8/01', 'Comércio atacadista de frutas, verduras, raízes, tubérculos, hortaliças e legumes frescos'),
  ('4633-8/02', 'Comércio atacadista de aves vivas e ovos'),
  ('4633-8/03', 'Comércio atacadista de coelhos e outros pequenos animais vivos para alimentação'),
  ('4634-6/01', 'Comércio atacadista de carnes bovinas, suinas e derivados'),
  ('4634-6/02', 'Comércio atacadista de aves abatidas e derivados'),
  ('4634-6/03', 'Comércio atacadista de pescado e frutos do mar'),
  ('4634-6/99', 'Comércio atacadista de carnes e derivados de outros animais'),
  ('4635-4/01', 'Comércio atacadista de água mineral'),
  ('4635-4/02', 'Comércio atacadista de cerveja, chope e refrigerante'),
  ('4635-4/03', 'Comércio atacadista de bebidas com atividade de fracionamento e acondicionamento associada'),
  ('4635-4/99', 'Comércio atacadista de bebidas não especificadas anteriormente'),
  ('4636-2/01', 'Comércio atacadista de fumo beneficiado'),
  ('4636-2/02', 'Comércio atacadista de cigarros, cigarrilhas e charutos'),
  ('4637-1/01', 'Comércio atacadista de café torrado, moído e solúvel'),
  ('4637-1/02', 'Comércio atacadista de açúcar'),
  ('4637-1/03', 'Comércio atacadista de óleos e gorduras'),
  ('4637-1/04', 'Comércio atacadista de pães, bolos, biscoitos e similares'),
  ('4637-1/05', 'Comércio atacadista de massas alimentícias'),
  ('4637-1/06', 'Comércio atacadista de sorvetes'),
  ('4637-1/07', 'Comércio atacadista de chocolates, confeitos, balas, bombons e semelhantes'),
  ('4637-1/99', 'Comércio atacadista especializado em outros produtos alimentícios não especificados anteriormente'),
  ('4639-7/01', 'Comércio atacadista de produtos alimentícios em geral'),
  ('4641-9/01', 'Comércio atacadista de tecidos'),
  ('4641-9/02', 'Comércio atacadista de artigos de cama, mesa e banho'),
  ('4641-9/03', 'Comércio atacadista de artigos de armarinho'),
  ('4642-7/01', 'Comércio atacadista de artigos do vestuário e acessórios, exceto profissionais e de segurança'),
  ('4642-7/02', 'Comércio atacadista de roupas e acessórios para uso profissional e de segurança do trabalho'),
  ('4643-5/01', 'Comércio atacadista de calçados'),
  ('4643-5/02', 'Comércio atacadista de bolsas, malas e artigos de viagem'),
  ('4644-3/01', 'Comércio atacadista de medicamentos e drogas de uso humano'),
  ('4644-3/02', 'Comércio atacadista de medicamentos e drogas de uso veterinário'),
  ('4645-1/01', 'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, hospitalar e de laboratórios'),
  ('4645-1/02', 'Comércio atacadista de próteses e artigos de ortopedia'),
  ('4645-1/03', 'Comércio atacadista de produtos odontológicos'),
  ('4646-0/01', 'Comércio atacadista de cosméticos e produtos de perfumaria'),
  ('4646-0/02', 'Comércio atacadista de produtos de higiene pessoal'),
  ('4647-8/01', 'Comércio atacadista de artigos de escritório e de papelaria'),
  ('4647-8/02', 'Comércio atacadista de livros, jornais e outras publicações'),
  ('4649-4/01', 'Comércio atacadista de equipamentos elétricos de uso pessoal e doméstico'),
  ('4649-4/02', 'Comércio atacadista de aparelhos eletrônicos de uso pessoal e doméstico'),
  ('4649-4/03', 'Comércio atacadista de bicicletas, triciclos e outros veículos recreativos'),
  ('4649-4/04', 'Comércio atacadista de móveis e artigos de colchoaria'),
  ('4649-4/05', 'Comércio atacadista de artigos de tapeçaria; persianas e cortinas'),
  ('4649-4/06', 'Comércio atacadista de lustres, luminárias e abajures'),
  ('4649-4/07', 'Comércio atacadista de filmes, CDs, DVDs, fitas e discos'),
  ('4649-4/08', 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar'),
  ('4649-4/09', 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar, com atividade de fracionamento e acondicionamento associada'),
  ('4649-4/10', 'Comercio atacadista de joias, relógios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas'),
  ('4649-4/99', 'Comércio atacadista de outros equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente'),
  ('4651-6/01', 'Comércio atacadista de equipamentos de informática'),
  ('4651-6/02', 'Comércio atacadista de suprimentos de informática'),
  ('4652-4/00', 'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação'),
  ('4661-3/00', 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças'),
  ('4662-1/00', 'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças'),
  ('4663-0/00', 'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças'),
  ('4664-8/00', 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odonto-médico- hospitalar, parte e peças'),
  ('4665-6/00', 'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças'),
  ('4669-9/01', 'Comércio atacadista de bombas e compressores; partes e peças'),
  ('4669-9/99', 'Comércio atacadista de outras máquinas e equipamentos não especificados anteriormente; partes e peças'),
  ('4671-1/00', 'Comércio atacadista de madeira e produtos derivados'),
  ('4672-9/00', 'Comércio atacadista de ferragens e ferramentas'),
  ('4673-7/00', 'Comércio atacadista de material elétrico'),
  ('4674-5/00', 'Comércio atacadista de cimento'),
  ('4679-6/01', 'Comércio atacadista de tintas, vernizes e similares'),
  ('4679-6/02', 'Comércio atacadista de mármores e granitos'),
  ('4679-6/03', 'Comércio atacadista de vidros, espelhos e vitrais'),
  ('4679-6/04', 'Comércio atacadista especializado de materiais de construção não especificados anteriormente'),
  ('4679-6/99', 'Comércio atacadista de materiais de construção em geral'),
  ('4681-8/01', 'Comércio atacadista de álcool carburante, biodiesel, gasolina e demais derivados de petróleo, exceto lubrificantes, não realizado por transportador retalhista (TRR)'),
  ('4681-8/02', 'Comércio atacadista de combustíveis realizado por transportador retalhista (TRR)'),
  ('4681-8/03', 'Comércio atacadista de combustíveis de origem vegetal, exceto álcool carburante'),
  ('4681-8/04', 'Comércio atacadista de combustíveis de origem mineral em bruto'),
  ('4681-8/05', 'Comércio atacadista de lubrificantes'),
  ('4682-6/00', 'Comércio atacadista de gás liquefeito de petróleo (GLP)'),
  ('4683-4/00', 'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivo de solo'),
  ('4684-2/01', 'Comércio atacadista de resinas e elastômeros'),
  ('4684-2/02', 'Comércio atacadista de solventes'),
  ('4684-2/99', 'Comércio atacadista de outros produtos químicos e petroquímicos não especificados anteriormente'),
  ('4685-1/00', 'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção'),
  ('4686-9/01', 'Comércio atacadista de papel e papelão em bruto'),
  ('4686-9/02', 'Comércio atacadista de embalagens'),
  ('4687-7/01', 'Comercio atacadista de resíduos de papel e papelão'),
  ('4687-7/02', 'Comércio atacadista de resíduos e sucatas não metálicos - exceto de papel e papelão'),
  ('4687-7/03', 'Comércio atacadista de resíduos e sucatas metálicos'),
  ('4689-3/01', 'Comércio atacadista de produtos da extração mineral, exceto combustíveis'),
  ('4689-3/02', 'Comércio atacadista de fios e fibras têxteis beneficiados'),
  ('4689-3/99', 'Comércio atacadista especializado em outros produtos intermediários não especificados anteriormente'),
  ('4691-5/00', 'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios'),
  ('4692-3/00', 'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários'),
  ('4693-1/00', 'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agrícolas'),
  ('4711-3/01', 'Comércio varejista de mercadorias em geral, com predominancia de produtos alimentícios - hipermercados'),
  ('4711-3/02', 'Comércio varejista de mercadorias em geral, com predominancia de produtos alimentícios - supermercados'),
  ('4712-1/00', 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios – minimercados, mercearias e armazéns'),
  ('4713-0/02', 'Lojas de variedades, exceto lojas de departamentos ou magazines'),
  ('4713-0/04', 'Lojas de Departamentos Ou Magazines, Exceto Lojas Francas (Duty Free)'),
  ('4713-0/05', 'Lojas Francas (Duty Free) de Aeroportos, Portos e em Fronteiras Terrestres'),
  ('4721-1/02', 'Padaria e confeitaria com predominancia de revenda'),
  ('4721-1/03', 'Comércio varejista de laticínios e frios'),
  ('4721-1/04', 'Comércio varejista de doces, balas, bombons e semelhantes'),
  ('4722-9/01', 'Comércio varejista de carnes - açougue'),
  ('4722-9/02', 'Peixaria'),
  ('4723-7/00', 'Comércio varejista de bebidas'),
  ('4724-5/00', 'Comércio varejista de hortifrutigranjeiros'),
  ('4729-6/01', 'Tabacaria'),
  ('4729-6/02', 'Comércio varejista de mercadorias em lojas de conveniência'),
  ('4729-6/99', 'Comércio varejista de produtos alimentícios em geral, ou especializado em produtos alimentícios não especificados anteriormente'),
  ('4731-8/00', 'Comércio varejista de combustíveis para veículos automotores'),
  ('4732-6/00', 'Comércio varejista de lubrificantes'),
  ('4741-5/00', 'Comércio varejista de tintas e materiais para pintura'),
  ('4742-3/00', 'Comércio varejista de material elétrico'),
  ('4743-1/00', 'Comércio varejista de vidros'),
  ('4744-0/01', 'Comércio varejista de ferragens e ferramentas'),
  ('4744-0/02', 'Comércio varejista de madeira e artefatos'),
  ('4744-0/03', 'Comércio varejista de materiais hidráulicos'),
  ('4744-0/04', 'Comércio varejista de cal, areia, pedra britada, tijolos e telhas'),
  ('4744-0/05', 'Comércio varejista de materiais de construção não especificados anteriormente'),
  ('4744-0/06', 'Comércio varejista de pedras para revestimento'),
  ('4744-0/99', 'Comércio varejista de materiais de construção em geral'),
  ('4751-2/01', 'Comércio varejista especializado de equipamentos e suprimentos de informática'),
  ('4751-2/02', 'Recarga de cartuchos para equipamentos de informática'),
  ('4752-1/00', 'Comércio varejista especializado de equipamentos de telefonia e comunicação'),
  ('4753-9/00', 'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo'),
  ('4754-7/01', 'Comércio varejista de móveis'),
  ('4754-7/02', 'Comércio varejista de artigos de colchoaria'),
  ('4754-7/03', 'Comércio varejista de artigos de iluminação'),
  ('4755-5/01', 'Comércio varejista de tecidos'),
  ('4755-5/02', 'Comercio varejista de artigos de armarinho'),
  ('4755-5/03', 'Comércio varejista de artigos de cama, mesa e banho'),
  ('4756-3/00', 'Comércio varejista especializado em instrumentos musicais e acessórios'),
  ('4757-1/00', 'Comércio varejista de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação'),
  ('4759-8/01', 'Comércio varejista de artigos de tapeçaria, cortinas e persianas'),
  ('4759-8/99', 'Comércio varejista de outros artigos de uso doméstico não especificados anteriormente'),
  ('4761-0/01', 'Comércio varejista de livros'),
  ('4761-0/02', 'Comércio varejista de jornais e revista'),
  ('4761-0/03', 'Comércio varejista de artigos de papelaria'),
  ('4762-8/00', 'Comércio varejista de discos, CDs, DVDs e fitas'),
  ('4763-6/01', 'Comércio varejista de brinquedos e artigos recreativos'),
  ('4763-6/02', 'Comércio varejista de artigos esportivos'),
  ('4763-6/03', 'Comércio varejista de bicicletas e triciclos; peças e acessórios'),
  ('4763-6/04', 'Comércio varejista de artigos de caça, pesca e ""camping""'),
  ('4763-6/05', 'Comércio varejista de embarcações e outros veículos recreativos; peças e acessórios'),
  ('4771-7/01', 'Comércio varejista de produtos farmacêuticos sem manipulação de fórmulas'),
  ('4771-7/02', 'Comércio varejista de produtos farmaceuticos, com manipulação de fórmulas'),
  ('4771-7/03', 'Comércio varejista de produtos farmacêuticos homeopáticos'),
  ('4771-7/04', 'Comércio varejista de medicamentos veterinários'),
  ('4772-5/00', 'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal'),
  ('4773-3/00', 'Comércio varejista de artigos médicos e ortopédicos'),
  ('4774-1/00', 'Comércio varejista de artigos de ótica'),
  ('4781-4/00', 'Comércio varejista de artigos do vestuário e acessórios'),
  ('4782-2/01', 'Comércio varejista de calçados'),
  ('4782-2/02', 'Comércio varejista de artigos de viagem'),
  ('4783-1/01', 'Comércio varejista de artigos de joalheria'),
  ('4783-1/02', 'Comércio varejista de artigos de relojoaria'),
  ('4784-9/00', 'Comércio varejista de gás liquefeito de petróleo (GLP)'),
  ('4785-7/01', 'Comercio varejista de antiguidades'),
  ('4785-7/99', 'Comércio varejista de outros artigos usados'),
  ('4789-0/01', 'Comércio varejista de souvenires, bijuterias e artesanatos'),
  ('4789-0/02', 'Comércio varejista de plantas e flores naturais'),
  ('4789-0/03', 'Comércio varejista de objetos de arte'),
  ('4789-0/04', 'Comércio varejista de animais vivos e de artigos e alimentos para animais de estimação'),
  ('4789-0/05', 'Comércio varejista de produtos saneantes domissanitários'),
  ('4789-0/06', 'Comércio varejista de fogos de artifício e artigos pirotécnicos'),
  ('4789-0/07', 'Comércio varejista de máquinas e equipamentos para escritório'),
  ('4789-0/08', 'Comércio varejista de artigos fotográficos e para filmagem'),
  ('4789-0/09', 'Comércio varejista de armas e munições'),
  ('4789-0/99', 'Comercio Varejista de outros produtos não especificados anteriormente'),
  ('4911-6/00', 'Transporte ferroviário de cargas'),
  ('4912-4/01', 'Transporte ferroviário de passageiros, intermunicipal e interestadual'),
  ('4912-4/02', 'Transporte ferroviário de passageiros municipal e em região metropolitana'),
  ('4912-4/03', 'Transporte metroviário'),
  ('4921-3/01', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal'),
  ('4921-3/02', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal em região metropolitana'),
  ('4922-1/01', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, exceto em região metropolitana'),
  ('4922-1/02', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, interestadual'),
  ('4922-1/03', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, internacional'),
  ('4923-0/01', 'Serviços de táxi'),
  ('4923-0/02', 'Serviço de transporte de passageiros - locação de automóveis com motorista'),
  ('4924-8/00', 'Transporte escolar'),
  ('4929-9/01', 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento municipal'),
  ('4929-9/02', 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional'),
  ('4929-9/03', 'Organização de excursões em veículos rodoviários próprios municipal'),
  ('4929-9/04', 'Organização de excursões em veículos rodoviários próprios, intermunicipal, interestadual e internacional'),
  ('4929-9/99', 'Outros transportes rodoviários de passageiros não especificados anteriormente'),
  ('4930-2/01', 'Transporte rodoviário de cargas – exceto produtos perigosos e mudanças, municipal'),
  ('4930-2/02', 'Transporte rodoviário de carga - exceto produtos perigosos e mudanças, intermunicipal, interestadual e internacional'),
  ('4930-2/03', 'Transporte rodoviário de produtos perigosos'),
  ('4930-2/04', 'Transporte rodoviário de mudanças'),
  ('4940-0/00', 'Transporte dutoviário'),
  ('4950-7/00', 'Trens turísticos, teleféricos e similares'),
  ('5011-4/01', 'Transporte marítimo de cabotagem - carga'),
  ('5011-4/02', 'Transporte marítimo de cabotagem - passageiros'),
  ('5012-2/01', 'Transporte marítimo de longo curso- carga'),
  ('5012-2/02', 'Transporte marítimo de longo curso - passageiros'),
  ('5021-1/01', 'Transporte por navegação interior de carga, municipal, exceto travessia'),
  ('5021-1/02', 'Transporte por navegação interior de carga, intermunicipal, interestadual e internacional, exceto travessia'),
  ('5022-0/01', 'Transporte por navegação interior de passageiros em linhas regulares, municipal, exceto travessia'),
  ('5022-0/02', 'Transporte por navegação interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia'),
  ('5030-1/01', 'Navegação de apoio marítimo'),
  ('5030-1/02', 'Navegação de apoio portuário'),
  ('5030-1/03', 'Serviço de Rebocadores e Empurradores'),
  ('5091-2/01', 'Transporte por navegação de travessia, municipal'),
  ('5091-2/02', 'Transporte por navegação de travessia, intermunicipal, interestadual e internacional'),
  ('5099-8/01', 'Transporte aquaviário para passeios turísticos'),
  ('5099-8/99', 'Outros transportes aquaviários não especificados anteriormente'),
  ('5111-1/00', 'Transporte aéreo de passageiros regular'),
  ('5112-9/01', 'Serviços de táxis aéreos e locação de aeronaves com tripulação'),
  ('5112-9/99', 'Outros serviços de transporte aéreo de passageiros não regular'),
  ('5120-0/00', 'Transporte aéreo de carga'),
  ('5130-7/00', 'Transporte espacial'),
  ('5211-7/01', 'Armazéns gerais (emissão de warrant)'),
  ('5211-7/02', 'Guarda-móveis'),
  ('5211-7/99', 'Depósitos de mercadorias para terceiros – exceto armazéns gerais e guarda móveis'),
  ('5212-5/00', 'Carga e descarga'),
  ('5221-4/00', 'Concessionárias de rodovias, pontes, túneis e serviços relacionados'),
  ('5222-2/00', 'Terminais rodoviários e ferroviários'),
  ('5223-1/00', 'Estacionamento de veículos'),
  ('5229-0/01', 'Serviços de apoio ao transporte por táxi, inclusive centrais de chamada'),
  ('5229-0/02', 'Serviços de reboque de veículos'),
  ('5229-0/99', 'Outras atividades auxiliares dos transportes terrestres não especificadas anteriormente'),
  ('5231-1/01', 'Administração da infraestrutura portuária'),
  ('5231-1/02', 'Operações de terminais'),
  ('5231-1/03', 'Gestão de terminais aquaviários'),
  ('5232-0/00', 'Atividades de agenciamento marítimo'),
  ('5239-7/01', 'Serviços de Praticagem'),
  ('5239-7/99', 'Atividades Auxiliares Dos Transportes Aquaviários Não Especificadas anteriormente'),
  ('5240-1/01', 'Operação de aeroportos e campos de aterrissagem'),
  ('5240-1/99', 'Atividades auxiliares dos transportes aéreos, exceto operação dos aeroportos de aterrissagem'),
  ('5250-8/01', 'Comissaria de despachos'),
  ('5250-8/02', 'Atividades de despachantes aduaneiros'),
  ('5250-8/03', 'Agenciamento de cargas, exceto para o transporte marítimo'),
  ('5250-8/04', 'Organização logística do transporte de carga'),
  ('5250-8/05', 'Operador de transporte multimodal - OTM'),
  ('5310-5/01', 'Atividades do Correio Nacional'),
  ('5310-5/02', 'Atividades de franqueadas e permissionárias do Correio Nacional'),
  ('5320-2/01', 'Serviços de malote não realizados pelo Correio Nacional'),
  ('5320-2/02', 'Serviço de entrega rápida'),
  ('5510-8/01', 'Hotéis'),
  ('5510-8/02', 'Apart-Hotéis'),
  ('5510-8/03', 'Motéis'),
  ('5590-6/01', 'Albergues, exceto assistenciais'),
  ('5590-6/02', 'Camping'),
  ('5590-6/03', 'Pensões'),
  ('5590-6/99', 'Outros alojamentos não especificados anteriormente'),
  ('5611-2/01', 'Restaurantes e similares'),
  ('5611-2/03', 'Lanchonete, casas de chá, de sucos e similares'),
  ('5611-2/04', 'Bares e outros estabelecimentos especializados em servir bebidas, sem entretenimento'),
  ('5611-2/05', 'Bares e outros estabelecimentos especializados em servir bebidas, com entretenimento'),
  ('5612-1/00', 'Serviços ambulantes de alimentação'),
  ('5620-1/01', 'Fornecimento de alimentos preparados preponderantemente para empresas'),
  ('5620-1/02', 'Serviços de alimentação para eventos e recepções - bufê'),
  ('5620-1/03', 'Cantinas - serviços de alimentação privativos'),
  ('5620-1/04', 'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar'),
  ('5811-5/00', 'Edição de livros'),
  ('5812-3/01', 'Edição de jornais diários'),
  ('5812-3/02', 'Edição de jornais não diários'),
  ('5813-1/00', 'Edição de revistas'),
  ('5819-1/00', 'Edição de cadastros, listas e outros produtos gráficos'),
  ('5821-2/00', 'Edição integrada à impressão de livros'),
  ('5822-1/01', 'Edição integrada à impressão de jornais diários'),
  ('5822-1/02', 'Edição Integrada à Impressão de Jornais Não Diários'),
  ('5823-9/00', 'Edição integrada à impressão de revistas'),
  ('5829-8/00', 'Edição integrada e impressão de cadastros, listas e outros produtos gráficos'),
  ('5911-1/01', 'Estúdios cinematográficos'),
  ('5911-1/02', 'Produção de filmes para publicidade'),
  ('5911-1/99', 'Atividades de produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'),
  ('5912-0/01', 'Serviços de dublagem'),
  ('5912-0/02', 'Serviços de mixagens sonora em produção áudio visual'),
  ('5912-0/99', 'Atividades de pós-produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'),
  ('5913-8/00', 'Distribuição cinematográfica, de vídeo e de programa de televisão'),
  ('5914-6/00', 'Atividades de exibição cinematográfica'),
  ('5920-1/00', 'Atividades de gravação de som e de edição de música'),
  ('6010-1/00', 'Atividades de rádio'),
  ('6021-7/00', 'Atividades de televisão aberta'),
  ('6022-5/01', 'Programadoras'),
  ('6022-5/02', 'Atividades relacionadas a televisão por assinatura, exceto programadoras'),
  ('6110-8/01', 'Serviços de telefonia fixa comutada - STFC'),
  ('6110-8/02', 'Serviços de redes de transporte de telecomunicações - SRTT'),
  ('6110-8/03', 'Serviços de comunicação multimídia - SMC'),
  ('6110-8/99', 'Serviços de telecomunicações por fio não especificados anteriormente'),
  ('6120-5/01', 'Telefonia Móvel Celular'),
  ('6120-5/02', 'Serviço móvel especializado - SME'),
  ('6120-5/99', 'Serviços de telecomunicações sem fio não especificados anteriormente'),
  ('6130-2/00', 'Telecomunicações por satélite'),
  ('6141-8/00', 'Operadoras de televisão por assinatura por cabo'),
  ('6142-6/00', 'Operadoras de televisão por assinatura por micro-ondas'),
  ('6143-4/00', 'Operadoras de televisão por assinatura por satélite'),
  ('6190-6/01', 'Provedores de acesso às redes de comunicações'),
  ('6190-6/02', 'Provedores de voz sobre protocolo internet - VOIP'),
  ('6190-6/99', 'Outras atividades de telecomunicações não especificadas anteriormente'),
  ('6201-5/01', 'Desenvolvimento de programas de computador sob encomenda'),
  ('6201-5/02', 'Web design'),
  ('6202-3/00', 'Desenvolvimento e licenciamento de programa de computador'),
  ('6203-1/00', 'Desenvolvimento e licenciamento de programas de computador não customizáveis'),
  ('6204-0/00', 'Consultoria em tecnologia da informação'),
  ('6209-1/00', 'Suporte técnico, manutenção e outros serviços em tecnologia da informação'),
  ('6311-9/00', 'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet'),
  ('6319-4/00', 'Portais, provedores de conteúdo e outros serviços de informação e internet'),
  ('6391-7/00', 'Agências de notícias'),
  ('6399-2/00', 'Outras atividades de prestação de serviços de informação não especificados anteriormente'),
  ('6410-7/00', 'Banco Central'),
  ('6421-2/00', 'Bancos comerciais'),
  ('6422-1/00', 'Bancos múltiplos, com carteira comercial'),
  ('6423-9/00', 'Caixas econômicas'),
  ('6424-7/01', 'Bancos cooperativos'),
  ('6424-7/02', 'Cooperativas centrais de crédito'),
  ('6424-7/03', 'Cooperativas de crédito mútuo'),
  ('6424-7/04', 'Cooperativas de crédito rural'),
  ('6431-0/00', 'Bancos múltiplos, sem carteira comercial'),
  ('6432-8/00', 'Bancos de investimento'),
  ('6433-6/00', 'Bancos de desenvolvimento'),
  ('6434-4/00', 'Agências de fomento'),
  ('6435-2/01', 'Sociedades de crédito imobiliário'),
  ('6435-2/02', 'Associações de poupança e empréstimo'),
  ('6435-2/03', 'Companhias hipotecárias'),
  ('6436-1/00', 'Sociedades de crédito, financiamento e investimento - financeiras'),
  ('6437-9/00', 'Sociedades de crédito ao microempreendedor'),
  ('6438-7/01', 'Bancos de câmbio'),
  ('6438-7/99', 'Outras instituições de intermediação não monetária não especificadas anteriormente'),
  ('6440-9/00', 'Arrendamento mercantil'),
  ('6450-6/00', 'Sociedades de capitalização'),
  ('6461-1/00', 'Holdings de instituições financeiras'),
  ('6462-0/00', 'Holdings de instituições não-financeiras'),
  ('6463-8/00', 'Outras sociedades de participação, exceto holdings'),
  ('6470-1/01', 'Fundos de investimento, exceto previdenciários e imobiliários'),
  ('6470-1/02', 'Fundos de investimento previdenciários.'),
  ('6470-1/03', 'Fundos de investimento imobiliário'),
  ('6491-3/00', 'Sociedades de fomento mercantil - Factoring'),
  ('6492-1/00', 'Securitização de créditos'),
  ('6493-0/00', 'Administração de consórcios para aquisição de bens e direitos'),
  ('6499-9/01', 'Clubes de investimento'),
  ('6499-9/02', 'Sociedades de investimento'),
  ('6499-9/03', 'Fundo garantidor de crédito'),
  ('6499-9/04', 'Caixas de financiamento de corporações'),
  ('6499-9/05', 'Concessão de créditos pelas OSCIP'),
  ('6499-9/99', 'Outras atividades de serviços financeiros não especificadas anteriormente'),
  ('6511-1/01', 'Seguros de vida'),
  ('6511-1/02', 'Planos de auxílio funeral'),
  ('6512-0/00', 'Outros seguros não-vida'),
  ('6520-1/00', 'Seguro saúde'),
  ('6530-8/00', 'Resseguros'),
  ('6541-3/00', 'Previdência complementar fechada'),
  ('6542-1/00', 'Previdência complementar aberta'),
  ('6550-2/00', 'Planos de saúde'),
  ('6611-8/01', 'Bolsa de valores'),
  ('6611-8/02', 'Bolsa de mercadorias'),
  ('6611-8/03', 'Bolsa de mercadorias e futuros'),
  ('6611-8/04', 'Administração de mercados de balcão organizados'),
  ('6612-6/01', 'Corretoras de títulos e valores mobiliários'),
  ('6612-6/02', 'Distribuidoras de títulos e valores mobiliários'),
  ('6612-6/03', 'Corretoras de câmbio'),
  ('6612-6/04', 'Corretoras de contratos de mercadorias'),
  ('6612-6/05', 'Agencias de investimentos em aplicações financeiras'),
  ('6613-4/00', 'Administração de cartão de crédito'),
  ('6619-3/01', 'Serviços de liquidação e custódia'),
  ('6619-3/02', 'Correspondentes de instituições financeiras'),
  ('6619-3/03', 'Representação de bancos estrangeiros'),
  ('6619-3/04', 'Caixas eletrônicos'),
  ('6619-3/05', 'Operadoras de cartões de crédito'),
  ('6619-3/99', 'Outras atividades auxiliares dos serviços financeiros não especificadas anteriormente'),
  ('6621-5/01', 'Peritos e avaliadores de seguros'),
  ('6621-5/02', 'Auditoria e consultoria atuarial'),
  ('6622-3/00', 'Corretores e agentes de seguros e de planos de previdência complementar e de saúde'),
  ('6629-1/00', 'Atividades Auxiliares dos Seguros, da Previdência Complementar e dos Planos de Saúde Não especificadas anteriormente'),
  ('6630-4/00', 'Atividades de administração de fundos por contrato ou comissão'),
  ('6810-2/01', 'Compra e venda de imóveis próprios'),
  ('6810-2/02', 'Aluguel de imóveis próprios'),
  ('6810-2/03', 'Loteamento de imóveis próprios'),
  ('6821-8/01', 'Corretagem na compra e venda e avaliação de imóveis'),
  ('6821-8/02', 'Corretagem no aluguel de imóveis'),
  ('6822-6/00', 'Gestão e administração da propriedade imobiliária'),
  ('6911-7/01', 'Serviços advocatícios'),
  ('6911-7/02', 'Atividades auxiliares da justiça'),
  ('6911-7/03', 'Agente de propriedade industrial'),
  ('6912-5/00', 'Cartórios'),
  ('6920-6/01', 'Atividades de contabilidade'),
  ('6920-6/02', 'Atividades de consultoria e auditoria contábil e tributária'),
  ('7020-4/00', 'Atividade de consultoria em gestão empresarial, exceto consultoria técnica específica'),
  ('7111-1/00', 'Serviços de arquitetura'),
  ('7112-0/00', 'Serviços de engenharia'),
  ('7119-7/01', 'Serviços de cartografia, topografia e geodésia'),
  ('7119-7/02', 'Atividades de estudos geológicos'),
  ('7119-7/03', 'Serviços de desenho técnico relacionados à arquitetura e engenharia'),
  ('7119-7/04', 'Serviços de perícia técnica relacionados à segurança do trabalho'),
  ('7119-7/99', 'Atividades técnicas relacionadas a engenharia e arquitetura não especificadas anteriormente'),
  ('7120-1/00', 'Testes e análises técnicas'),
  ('7210-0/00', 'Pesquisa e desenvolvimento experimental em ciências físicas e naturais'),
  ('7220-7/00', 'Pesquisa e desenvolvimento experimental em ciências sociais e humanas'),
  ('7311-4/00', 'Agências de publicidade'),
  ('7312-2/00', 'Agenciamento de espaços para publicidade, exceto em veículos de comunicação'),
  ('7319-0/01', 'Criação e montagem de estandes para feiras e exposições'),
  ('7319-0/02', 'Promoção de vendas'),
  ('7319-0/03', 'Marketing direto'),
  ('7319-0/04', 'Consultoria e publicidade'),
  ('7319-0/99', 'Outras atividades de publicidade não especificada anteriormente'),
  ('7320-3/00', 'Pesquisas de mercado e de opinião pública'),
  ('7410-2/02', 'Design de interiores'),
  ('7410-2/03', 'Design de produto'),
  ('7410-2/99', 'Atividades de design não especificadas anteriormente'),
  ('7420-0/01', 'Atividades de produção de fotografias, exceto aérea e submarina'),
  ('7420-0/02', 'Atividades de produção de fotografias aéreas e submarinas'),
  ('7420-0/03', 'Laboratórios fotográficos'),
  ('7420-0/04', 'Filmagem de festas e eventos'),
  ('7420-0/05', 'Serviços de microfilmagens'),
  ('7490-1/01', 'Serviços de tradução, interpretação e similares'),
  ('7490-1/02', 'Escafandria e mergulho'),
  ('7490-1/03', 'Serviços de agronomia e de consultoria às atividades agrícolas e pecuárias'),
  ('7490-1/04', 'Atividades de intermediação e agenciamento de serviços e negócios em geral, exceto imobiliários'),
  ('7490-1/05', 'Agenciamento de profissionais para atividades esportivas, culturais e artísticas'),
  ('7490-1/99', 'Outras atividades profissionais, científicas e técnicas não especificadas anteriormente'),
  ('7500-0/01', 'Atividades veterinárias'),
  ('7500-1/00', 'Atividades veterinárias'),
  ('7711-0/00', 'Locação de automóveis sem condutor'),
  ('7719-5/01', 'Locação de embarcações sem tripulantes, exceto para fins recreativos'),
  ('7719-5/02', 'Locação de aeronaves sem tripulação'),
  ('7719-5/99', 'Locação de outros meios de transporte não especificados anteriormente, sem condutor'),
  ('7721-7/00', 'Aluguel de equipamentos recreativos e esportivos'),
  ('7722-5/00', 'Aluguel de fitas de vídeo, DVD e similares'),
  ('7723-3/00', 'Aluguel de objetos do vestuário, joias e acessórios'),
  ('7729-2/01', 'Aluguel de aparelhos de jogos eletrônicos'),
  ('7729-2/02', 'Aluguel de móveis, utensílios e aparelhos de uso doméstico e pessoal; instrumentos musicais'),
  ('7729-2/03', 'Aluguel de material médico'),
  ('7729-2/99', 'Aluguel de outros objetos pessoais e domésticos não especificados anteriormente'),
  ('7731-4/00', 'Aluguel de máquinas e equipamentos agrícolas sem operador'),
  ('7732-2/01', 'Aluguel de máquinas e equipamentos para construção sem operador, exceto andaimes'),
  ('7732-2/02', 'Aluguel de andaimes'),
  ('7733-1/00', 'Aluguel de máquinas e equipamentos para escritórios'),
  ('7739-0/01', 'Aluguel de máquinas e equipamentos para extração de minérios e petróleo, sem operador'),
  ('7739-0/02', 'Aluguel de equipamentos científicos, médicos e hospitalares, sem operador'),
  ('7739-0/03', 'Aluguel de palcos, coberturas e outras estruturas de uso temporário, exceto andaimes'),
  ('7739-0/99', 'Aluguel de outras máquinas e equipamentos comerciais e industriais não especificados anteriormente, sem operador'),
  ('7740-3/00', 'Gestão de ativos intangíveis não-financeiros'),
  ('7810-8/00', 'Seleção e agenciamento de mão-de-obra'),
  ('7820-5/00', 'Locação de mão-de-obra temporária'),
  ('7830-2/00', 'Fornecimento e gestão de recursos humanos para terceiros'),
  ('7911-2/00', 'Agências de viagens'),
  ('7912-1/00', 'Operadores turísticos'),
  ('7990-2/00', 'Serviços de reservas e outros serviços de turismo não especificados anteriormente'),
  ('8011-1/01', 'Atividades de vigilância e segurança privada'),
  ('8011-1/02', 'Serviços de adestramento de cães de guarda'),
  ('8012-9/00', 'Atividades de transporte de valores'),
  ('8020-0/01', 'Atividades de monitoramento de sistemas de segurança eletrônico'),
  ('8020-0/02', 'Outras Atividades de Serviços de Segurança'),
  ('8030-7/00', 'Atividades de investigação particular'),
  ('8111-7/00', 'Serviços combinados para apoio a edifícios, excetos condomínios prediais'),
  ('8112-5/00', 'Condomínios prediais'),
  ('8121-4/00', 'Limpeza em prédios e em domicílios'),
  ('8122-2/00', 'Imunização e controle de pragas urbanas'),
  ('8129-0/00', 'Atividades de limpeza não especificadas anteriormente'),
  ('8130-3/00', 'Atividades paisagísticas'),
  ('8211-3/00', 'Serviços combinados de escritório e apoio administrativo'),
  ('8219-9/01', 'Fotocópias'),
  ('8219-9/99', 'Preparação de documentos e serviços especializados de apoio administrativo não especificados anteriormente'),
  ('8220-2/00', 'Atividades de teleatendimento'),
  ('8230-0/01', 'Serviços de organização de feiras, congressos, exposições e festas'),
  ('8230-0/02', 'Casas de festas e eventos'),
  ('8291-1/00', 'Atividades de cobranças e informações cadastrais'),
  ('8292-0/00', 'Envasamento e empacotamento sob contrato'),
  ('8299-7/01', 'Medição de consumo de energia elétrica, gás e água'),
  ('8299-7/02', 'Emissão de vales alimentação, vales transporte e similares'),
  ('8299-7/03', 'Serviços de gravação de carimbos, exceto confecção'),
  ('8299-7/04', 'Leiloeiros independentes'),
  ('8299-7/05', 'Serviços de levantamento de fundos sob contrato'),
  ('8299-7/06', 'Casa lotéricas'),
  ('8299-7/07', 'Salas de acesso a internet'),
  ('8299-7/99', 'Outras atividades de serviços prestados principalmente as empresas não especificadas anteriormente'),
  ('8411-6/00', 'Administração pública em geral'),
  ('8412-4/00', 'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais'),
  ('8413-2/00', 'Regulação de atividades econômicas'),
  ('8421-3/00', 'Relações exteriores'),
  ('8422-1/00', 'Defesa'),
  ('8423-0/00', 'Justiça'),
  ('8424-8/00', 'Segurança e ordem pública'),
  ('8425-6/00', 'Defesa civil'),
  ('8430-2/00', 'Seguridade social obrigatória'),
  ('8511-2/00', 'Educação infantil - creches'),
  ('8512-1/00', 'Educação infantil - pré-escola'),
  ('8513-9/00', 'Ensino fundamental'),
  ('8520-1/00', 'Ensino médio.'),
  ('8531-7/00', 'Educação superior - graduação.'),
  ('8532-5/00', 'Educação superior - graduação e pós- graduação.'),
  ('8533-3/00', 'Educação superior - pós-graduação e extensão'),
  ('8541-4/00', 'Educação profissional de nível técnico'),
  ('8542-2/00', 'Educação Profissional de Nível Tecnológico'),
  ('8550-3/01', 'Administração de caixas escolares'),
  ('8550-3/02', 'Atividades de apoio a educação, exceto caixas escolares'),
  ('8591-1/00', 'Ensino de esportes'),
  ('8592-9/01', 'Ensino de dança'),
  ('8592-9/02', 'Ensino das artes cênicas, exceto dança'),
  ('8592-9/03', 'Ensino de música'),
  ('8592-9/99', 'Ensino de arte e cultura não especificado anteriormente'),
  ('8593-7/00', 'Ensino de idiomas.'),
  ('8599-6/01', 'Formação de condutores'),
  ('8599-6/02', 'Cursos de pilotagem'),
  ('8599-6/03', 'Treinamento em informática'),
  ('8599-6/04', 'Treinamento em desenvolvimento profissional e gerencial'),
  ('8599-6/05', 'Cursos preparatórios para concursos.'),
  ('8599-6/99', 'Outras Atividades de ensino não especificadas anteriormente'),
  ('8610-1/01', 'Atividades de atendimento hospitalar – exceto pronto-socorro e unidades para atendimento de urgências'),
  ('8610-1/02', 'Atividade de atendimento em pronto-socorro e unidades hospitalares para atendimento a urgências'),
  ('8621-6/01', 'Uti móvel'),
  ('8621-6/02', 'Serviços móveis de atendimento a urgências – exceto por uti móvel'),
  ('8622-4/00', 'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências'),
  ('8630-5/01', 'Atividade médica ambulatorial com recursos para realização de procedimentos cirúrgicos'),
  ('8630-5/02', 'Atividade médica ambulatorial com recursos para realização de exames complementares'),
  ('8630-5/03', 'Atividade médica ambulatorial restrita a consultas'),
  ('8630-5/04', 'Atividade odontológica'),
  ('8630-5/06', 'Serviços de vacinação e imunização humana'),
  ('8630-5/07', 'Atividade de reprodução humana assistida'),
  ('8630-5/99', 'Atividades de atenção ambulatorial não especificadas anteriormente'),
  ('8640-2/01', 'Laboratórios de anatomia patológica e citológica'),
  ('8640-2/02', 'Laboratórios clínicos'),
  ('8640-2/03', 'Serviços de diálise e nefrologia'),
  ('8640-2/04', 'Serviços de tomografia'),
  ('8640-2/05', 'Serviços de diagnóstico por imagem com uso de radiação ionizante – exceto tomografia'),
  ('8640-2/06', 'Serviços de ressonância magnética'),
  ('8640-2/07', 'Serviços de diagnóstico por imagem, sem uso de radiação ionizante – exceto resonância magnética'),
  ('8640-2/08', 'Serviços de diagnóstico por registro gráfico, ecg, eeg e outros exames análogos'),
  ('8640-2/09', 'Serviços de diagnóstico por métodos ópticos – endoscopia e outros exames análogos'),
  ('8640-2/10', 'Serviço de quimioterapia'),
  ('8640-2/11', 'Serviço de radioterapia'),
  ('8640-2/12', 'Serviço de hemoterapia'),
  ('8640-2/13', 'Serviço de litotripsia'),
  ('8640-2/14', 'Serviços de bancos de células e tecidos humanos'),
  ('8640-2/99', 'Atividades de serviços de complementação diagnóstica e terapeutica – não especificadas anteriormente'),
  ('8650-0/01', 'Atividades de enfermagem'),
  ('8650-0/02', 'Atividades de profissionais de nutrição'),
  ('8650-0/03', 'Atividades de Psicologia e Psicanálise'),
  ('8650-0/04', 'Atividades de fisioterapia'),
  ('8650-0/05', 'Atividades de terapia ocupacional'),
  ('8650-0/06', 'Serviços de fonoaudiologia'),
  ('8650-0/07', 'Atividades de terapia de nutrição enteral e parenteral'),
  ('8650-0/99', 'Atividades de profissionais da área de saúde não especificadas anteriormente'),
  ('8660-7/00', 'Atividades de apoio a gestão da saúde'),
  ('8690-9/01', 'Atividades de práticas integrativas e complementares em saúde humana'),
  ('8690-9/02', 'Atividades de banco de leite humano'),
  ('8690-9/03', 'Atividades de acupuntura'),
  ('8690-9/04', 'Atividades de podologia'),
  ('8690-9/99', 'Outras atividades de atenção à saúde humana não especificadas anteriormente'),
  ('8711-5/01', 'Clínicas e residências geriátricas'),
  ('8711-5/02', 'Instituições de longa permanência para idosos'),
  ('8711-5/03', 'Atividades de assistência a deficientes físicos, imunodeprimidos e convalescentes'),
  ('8711-5/04', 'Centros de Apoio a pacientes com câncer e AIDS'),
  ('8711-5/05', 'Condomínios Residenciais para Idosos'),
  ('8712-3/00', 'Atividades de fornecimento de infraestrutura de apoio e assistência a paciente no domicílio'),
  ('8720-4/01', 'Atividades de centros de assistência psicossocial'),
  ('8720-4/99', 'Atividades de assistência psicossocial e à saúde à portadores de distúrbios psíquicos, deficiência mental e dependência química e grupos similares, não especificadas anteriormente'),
  ('8730-1/01', 'Orfanatos'),
  ('8730-1/02', 'Albergues assistenciais'),
  ('8730-1/99', 'Atividades de assistência social prestadas em residências coletivas e particulares não especificadas anteriormente'),
  ('8800-6/00', 'Serviços de assistência social sem alojamento'),
  ('9001-9/01', 'Produção teatral'),
  ('9001-9/02', 'Produção musical'),
  ('9001-9/03', 'Produção de espetáculos de dança'),
  ('9001-9/04', 'Produção de espetáculos circenses, de marionetes e similares'),
  ('9001-9/05', 'Produção de espetáculos de rodeios, vaquejadas e similares'),
  ('9001-9/06', 'Atividades de sonorização e de iluminação'),
  ('9001-9/99', 'Artes cênicas, espetáculos e atividades complementares não especificadas anteriormente'),
  ('9002-7/01', 'Atividades de artistas plásticos, jornalistas independentes e escritores'),
  ('9002-7/02', 'Restauração de obras- de- arte'),
  ('9003-5/00', 'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas'),
  ('9101-5/00', 'Atividades de bibliotecas e arquivos'),
  ('9102-3/01', 'Atividades de museus e de exploração de lugares e prédios históricos e atrações similares'),
  ('9102-3/02', 'Restauração e conservação de lugares e prédios históricos'),
  ('9103-1/00', 'Atividades de jardins botânicos, zoológicos, parques nacionais e reservas ecológicas e áreas de proteção ambiental'),
  ('9200-3/01', 'Casas de bingo'),
  ('9200-3/02', 'Exploração de apostas em corridas de cavalos'),
  ('9200-3/99', 'Exploração de jogos de azar e apostas não especificadas anteriormente'),
  ('9311-5/00', 'Gestão de instalações de esporte'),
  ('9312-3/00', 'Clubes sociais, desportivos e similares'),
  ('9313-1/00', 'Atividades de condicionamento físico'),
  ('9319-1/01', 'Produção e promoção de eventos esportivos'),
  ('9319-1/99', 'Outras atividades esportivas não especificadas anteriormente'),
  ('9321-2/00', 'Parques de diversões e parques temáticos'),
  ('9329-8/01', 'Discotecas, danceterias, salões de dança e similares'),
  ('9329-8/02', 'Exploração de boliches'),
  ('9329-8/03', 'Exploração de jogos de sinuca, bilhar e similares'),
  ('9329-8/04', 'Exploração de fliperamas e jogos eletrônicos'),
  ('9329-8/99', 'Outras atividades de recreação e lazer não especificadas anteriormente'),
  ('9411-1/00', 'Atividades de organizações associativas patronais e empresariais'),
  ('9412-0/01', 'Atividades de fiscalização profissional'),
  ('9412-0/99', 'Outras atividades associativas profissionais'),
  ('9420-1/00', 'Atividades de organizações sindicais'),
  ('9430-8/00', 'Atividades de associações de defesa de direitos sociais'),
  ('9491-0/00', 'Atividades de organizações religiosas'),
  ('9492-8/00', 'Atividades de organizações políticas'),
  ('9493-6/00', 'Atividades de organizações associativas ligadas a cultura e a arte'),
  ('9499-5/00', 'Atividades associativas não especificadas anteriormente'),
  ('9511-8/00', 'Reparação e manutenção de computadores e equipamentos periféricos'),
  ('9512-6/00', 'Reparação e manutenção de equipamentos de comunicação'),
  ('9521-5/00', 'Reparação e manutenção de equipamentos de uso pessoal e doméstico'),
  ('9529-1/01', 'Reparação de calçados, de bolsas e artigos de viagem'),
  ('9529-1/02', 'Chaveiros'),
  ('9529-1/03', 'Reparação de relógios'),
  ('9529-1/04', 'Reparação de bicicletas, triciclos e outros veículos não-motorizados'),
  ('9529-1/05', 'Reparação de artigos de mobiliário'),
  ('9529-1/06', 'Reparação de joias'),
  ('9529-1/99', 'Reparação e manutenção de outros objetos e equipamentos pessoais e domésticos não especificados anteriormente'),
  ('9601-7/01', 'Lavanderias'),
  ('9601-7/02', 'Tinturarias'),
  ('9601-7/03', 'Toalheiros'),
  ('9602-5/01', 'Cabeleireiros, manicure, pedicure e barbearia'),
  ('9602-5/02', 'Atividades de estética e outros serviços de cuidados com a beleza'),
  ('9603-3/01', 'Gestão e manutenção de cemitérios'),
  ('9603-3/02', 'Serviços de cremação'),
  ('9603-3/03', 'Serviços de sepultamento'),
  ('9603-3/04', 'Serviços de funerárias'),
  ('9603-3/05', 'Serviços de somatoconservação'),
  ('9603-3/99', 'Atividades funerárias e serviços relacionados não especificados anteriormente'),
  ('9609-2/02', 'Agências matrimoniais'),
  ('9609-2/04', 'Exploração de máquinas de serviços pessoais acionadas por moeda.'),
  ('9609-2/05', 'Atividades de sauna e banhos'),
  ('9609-2/06', 'Serviços de tatuagem e colocação de piercing'),
  ('9609-2/07', 'Alojamento de animais domésticos'),
  ('9609-2/08', 'Higiene e embelezamento de animais.'),
  ('9609-2/99', 'Outras atividades de serviços pessoais, não especificadas anteriormente'),
  ('9700-5/00', 'Serviços domésticos'),
  ('9900-8/00', 'Organismos internacionais e outras instituições extraterritoriais')
on conflict (codigo) do update set descricao = excluded.descricao;

insert into public.norma (sigla, esfera, orgao) values
  ('ABNT NBR 9050', 'tecnica', 'ABNT'),
  ('Comunicados Técnicos da Vigilância Sanitária de SP', 'estadual', 'CVS-SP'),
  ('Instrução Normativa IN nº 9/2009', 'federal', 'Anvisa'),
  ('Instruções Normativas Anvisa IN 90 a IN 97/2021', 'federal', 'Anvisa'),
  ('Manual de Rede de Frio do Ministério da Saúde', 'federal', 'Ministério da Saúde'),
  ('Portaria CVS 01/2024', 'estadual', 'CVS-SP'),
  ('Portaria CVS 05/2013', 'estadual', 'CVS-SP'),
  ('Portaria CVS 13/2025', 'estadual', 'CVS-SP'),
  ('Portaria GM/MS nº 888/2021', 'federal', 'Ministério da Saúde'),
  ('Portaria MS nº 3523/1998 e Resolução RE nº 09/2003', 'federal', 'Ministério da Saúde'),
  ('RDC 11/2014', 'federal', 'Anvisa'),
  ('RDC 15/2012', 'federal', 'Anvisa'),
  ('RDC 197/2017', 'federal', 'Anvisa'),
  ('RDC 216/2004', 'federal', 'Anvisa'),
  ('RDC 222/2018', 'federal', 'Anvisa'),
  ('RDC 267/2003', 'federal', 'Anvisa'),
  ('RDC 275/2002', 'federal', 'Anvisa'),
  ('RDC 44/2009', 'federal', 'Anvisa'),
  ('RDC 50/2002', 'federal', 'Anvisa'),
  ('RDC 502/2021', 'federal', 'Anvisa'),
  ('RDC 6/2013', 'federal', 'Anvisa'),
  ('RDC 611/2022', 'federal', 'Anvisa'),
  ('RDC 63/2011', 'federal', 'Anvisa'),
  ('RDC 67/2007', 'federal', 'Anvisa'),
  ('RDC 7/2010', 'federal', 'Anvisa'),
  ('RDC 786/2023', 'federal', 'Anvisa'),
  ('Resolução SS-15/1999', 'estadual', 'SES-SP')
on conflict (sigla) do nothing;

update public.norma set titulo = 'Licenciamento sanitário no Sevisa (atualizada em 13/05/2026)', vigencia_status = 'vigente', vigencia_conferida_em = '2026-11-03' where sigla = 'Portaria CVS 01/2024';
update public.norma set titulo = 'Atividades isentas de licenciamento sanitário (Risco I)', vigencia_status = 'vigente', vigencia_conferida_em = '2026-11-03' where sigla = 'Portaria CVS 13/2025';

-- Recarga limpa (as tabelas de ligação apagam em cascata)
delete from public.enquadramento where uf = 'SP' and municipio is null;
delete from public.cnae_referencia;

with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0111-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0111-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0111-3/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0111-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0112-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0112-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0112-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0113-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0114-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0115-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0116-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0116-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0116-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0116-4/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/07', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/08', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/09', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0119-9/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0121-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0121-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0122-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0131-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0132-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/07', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/08', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/09', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/10', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/11', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0133-4/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0134-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0135-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0139-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0141-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0141-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0142-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0151-2/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0151-2/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0151-2/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0152-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0152-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0152-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0153-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0153-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0154-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0155-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0155-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0155-5/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0155-5/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0155-5/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0159-8/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0159-8/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0159-8/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0159-8/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0159-8/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0161-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0161-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0161-0/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0161-0/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0162-8/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0162-8/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0162-8/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0162-8/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0163-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0170-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/07', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/08', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/09', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0210-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0220-9/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0230-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0311-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0311-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0311-6/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0311-6/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0312-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0312-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0312-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0312-4/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0321-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/07', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0322-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0500-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0500-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0600-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0600-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0600-0/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0710-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0710-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0721-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0721-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0722-7/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0722-7/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0723-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0723-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0724-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0724-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0725-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0729-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0729-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0729-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0729-4/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0729-4/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/06', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/07', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/08', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/09', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/10', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0810-0/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0891-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0892-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0892-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0893-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0899-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0899-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0899-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0899-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0910-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0990-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0990-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('0990-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1011-2/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1011-2/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1011-2/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1011-2/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1011-2/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1012-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1012-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1012-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1012-1/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1013-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1013-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1020-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1020-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1031-7/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação sob a forma artesanal de amendoim e castanha da caju torrados e salgados; conservas de frutas; compotas e beneficiamento de castanha.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1032-5/99', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que a fabricação sob a forma artesanal de conservas de legumes e outros vegetais (exceto palmito)', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1033-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1033-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1041-4/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene em depósito fechado óleos vegetais em bruto comestíveis, não exerça obtenção de tortas, farinhas e farelos de sementes oleaginosas e de subprodutos residuais da fabricação de óleos com finalidade de matéria-prima para alimento.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1042-2/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene em depósito fechado óleos vegetais refinados comestíveis, ceras de origem vegetal para fins alimentícios, outros beneficiamentos processados em óleos vegetais para fins alimentícios.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1051-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1052-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1063-5/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que produção sob a forma artesanal de farinha de mandioca', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1064-3/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de farinha de milho', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1065-1/01', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de amido e féculas de vegetais', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1066-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1069-4/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que moagem de forma artesanal de produtos de origem vegetal', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1071-6/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de açúcar mascavo, rapadura e melaço. Desde que não haja fabricação industrial de açúcar mascavo, cristal, demerara ou subprodutos do açúcar tais como rapadura, melado, melaço, etc.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1081-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1091-1/01', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de pão e pão de queijo congelado.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1092-9/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de bolachas e biscoitos', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1093-7/01', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de chocolates', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1093-7/02', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de balas, confeitos e frutas cristalizadas', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1094-5/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de massas alimentícias', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1095-3/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de especiarias', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1096-1/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de alimentos prontos', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1099-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1099-6/02', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabrique exclusivamente gelatinas em pó', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1099-6/04', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não produza nem armazene gelo que se destina ao consumo humano ou que entre em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1099-6/05', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de chás', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1099-6/99', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabricação de forma artesanal de produtos de soja', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1111-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1111-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1112-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1113-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1113-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1122-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1122-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1122-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1122-4/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1210-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1220-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1220-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1220-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1220-4/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1311-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1312-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1313-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1314-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1321-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1322-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1323-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1330-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1340-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1340-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1340-5/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1351-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1352-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1353-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1354-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1359-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1411-8/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1411-8/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1412-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1412-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1412-6/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1413-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1413-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1413-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1414-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1421-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1422-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1510-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1521-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1529-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1531-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1531-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1532-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1533-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1539-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1540-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1610-2/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1610-2/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1610-2/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1621-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1622-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1622-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1622-6/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1623-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1629-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1629-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1710-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1721-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1722-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1731-1/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que as embalagens não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1732-0/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que as embalagens não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1733-8/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que as embalagens não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1741-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1741-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1742-7/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1749-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1811-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1811-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1812-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1813-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1813-0/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1821-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1822-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1822-9/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1830-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1830-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1830-0/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1910-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1921-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1922-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1922-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1922-5/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1931-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('1932-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2011-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2012-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2013-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2013-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2014-2/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene em depósito fechado gases medicinais, comprimido e líquido, para fim terapêutico, gases elementares e misturas de gases medicinais, e óxido de etileno para esterilização de produtos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2019-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2019-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2021-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2022-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2029-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2031-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2032-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2033-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2040-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2051-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2063-1/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que fabrique exclusivamente produtos de higiene e perfumaria para uso veterinário.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2071-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2072-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2073-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2091-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2092-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2092-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2092-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2093-2/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique aditivos alimentares e coadjuvantes de tecnologia utilizados na fabricação de alimentos que utilizam ou não precursores e produtos químicos como auxiliares de processo ou de performance do produto final nos diversos segmentos de mercado para fabricação de cosméticos e saneantes que utilizam precursores.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2094-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2099-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2099-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2122-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2211-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2212-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2219-6/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique preservativos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2221-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2222-6/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que as embalagens não entram em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2223-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2229-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2229-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2229-3/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2229-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2311-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2312-5/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique embalagens de vidro que entrem em contato com alimento.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2319-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2320-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/04', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/05', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2330-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2341-9/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que os produtos cerâmicos refratários não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2342-7/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2342-7/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2349-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2349-4/99', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que os produtos cerâmicos não- refratários não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2391-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2391-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2391-5/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2392-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2399-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2399-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2399-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2411-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2412-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2421-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2422-9/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2422-9/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2423-7/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2423-7/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2424-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2424-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2431-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2439-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2441-5/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2441-5/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2442-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2443-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2449-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2449-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2449-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2449-1/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2451-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2452-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2511-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2512-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2513-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2521-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2522-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2531-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2531-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2532-2/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2532-2/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2539-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2539-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2541-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2542-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2543-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2550-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2550-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2591-8/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que as embalagens não entrem em contato com alimentos.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2592-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2592-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2593-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2599-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2599-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2599-3/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2610-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2621-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2622-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2631-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2632-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2640-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2651-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2652-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2670-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2670-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2680-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2710-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2710-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2710-4/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2721-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2722-8/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2722-8/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2731-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2732-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2733-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2740-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2740-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2751-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2759-7/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2759-7/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2790-2/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2790-2/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2790-2/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2811-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2812-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2813-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2814-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2814-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2815-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2815-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2821-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2821-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2822-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2822-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2823-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2824-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2824-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2825-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2829-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2829-1/99', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique ou armazene em depósito fechado hemodialisadores.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2831-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2832-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2833-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2840-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2851-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2852-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2853-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2854-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2861-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2862-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2863-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2864-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2865-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2866-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2869-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2910-7/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2910-7/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2910-7/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2920-4/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2920-4/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2930-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2930-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2930-1/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2941-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2942-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2943-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2944-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2945-0/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2949-2/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2949-2/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('2950-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3011-3/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3011-3/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3012-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3031-8/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3032-6/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3041-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3042-3/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3050-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3091-1/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3091-1/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3092-0/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene cadeiras de rodas com ou sem motor.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3099-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3101-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3102-1/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3103-9/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3104-7/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3211-6/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3211-6/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3211-6/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3212-4/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3220-5/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3230-2/00', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3240-0/01', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3240-0/02', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3240-0/03', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3240-0/99', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3250-7/07', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene em depósito fechado, lentes de contato, lentes intraoculares, fabricação de aparelhos para oftalmologia; fabricação de óculos de segurança para profissional de saúde', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3250-7/09', 'SP', 'Atividade não sujeita à vigilância sanitária', 'I', 'nao', false, 'nao_compete', null, null, null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Risco I — fora do licenciamento sanitário')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
with e as (insert into public.enquadramento (cnae_codigo, uf, condicao, risco, exige_lta, compete_visa, isencao_cvs13, condicionante, alerta, observacoes, nao_compreende, status, fonte, fonte_pagina) values ('3291-4/00', 'SP', 'Isento de licença, desde que cumpra o condicionante da CVS 13/2025', 'I', 'nao', true, 'condicional', 'Desde que não fabrique nem armazene em depósito fechado escova dental para uso humano.', 'Se não cumprir o condicionante, deixa de ser isenta: veja as demais situações deste CNAE (Portaria CVS 1).', null, null, 'validado', 'Portaria CVS 13/2025 — Anexo Único', null) returning id)
insert into public.enquadramento_norma (enquadramento_id, norma_id, nota) select e.id, norma.id, v.nota from e, (values ('Portaria CVS 13/2025', 'Isenção condicionada')) as v(sigla, nota) join public.norma on norma.sigla = v.sigla;
commit;
