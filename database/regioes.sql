BEGIN TRANSACTION;

CREATE TABLE Regioes(
    RegiaoId INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    numero_habitantes TEXT NOT NULL,
    qualidade_ar TEXT NOT NULL

);

INSERT INTO Regioes VALUES(NULL, 'sul', '30.402.587', 'Algumas cidades, como Curitiba, registraram níveis de poluição do ar que excedem os limites estabelecidos pela OMS');

INSERT INTO Regioes VALUES(NULL, 'nordeste', '57.112.096', 'A média regional é de 8,1 µg/m³, com o Maranhão registrando 13,4 µg/m³, um dos piores índices da região');

INSERT INTO Regioes VALUES(NULL, 'norte', '18.669.345', 'Possui as piores condições do país, com uma média de 15,1 µg/m³. Estados como Amazonas e Rondônia apresentam valores médios ainda mais elevados, com 17,3 µg/m³ e 18,0 µg/m³, respectivamente');

INSERT INTO Regioes VALUES(NULL, 'sudeste', '88.617.693', 'Apresenta níveis elevados de poluição do ar. Em São Paulo, a média de MP2,5 é de 14,6 µg/m³, sendo que a capital paulista registra alarmantes 36,5 µg/m³. No Rio de Janeiro, a média é de 13,3 µg/m³. Em Minas Gerais, 96% dos municípios têm níveis de MP2,5 acima do desejável .');

INSERT INTO Regioes Values(NULL, 'centro-oeste', '17.782.029', 'A qualidade do ar no Centro-Oeste costuma variar de boa a regular, mas piora em épocas de seca e queimadas. Alguns estados, como Mato Grosso, já registraram níveis de poluição acima dos recomendados, enquanto o monitoramento ainda é limitado em grande parte da região.');

CREATE TABLE Questoes(
    QuestoesId INTEGER PRIMARY KEY AUTOINCREMENT,
    Pergunta TEXT NOT NULL,
    Alternativas TEXT NOT NULL,
    Correta TEXT NOT NULL,
    RegiaoId INTEGER NOT NULL,
    FOREIGN KEY(RegiaoId) REFERENCES Regioes(RegiaoId)
);

/*
INSERT INTO Questoes VALUES(NULL, 'Meu fi quer bolacha?', 'a_nao;b_nao;c_nao;d_nap', 'd', 1);
INSERT INTO Questoes VALUES(NULL, 'Meu fi quer cachaca?', 'a_mimdepapai;b_mimdepapai;c_mimdepapai;d_mimdepapai', 'a', 1);
INSERT INTO Questoes VALUES(NULL, 'QUESTAO NOVA', 'a_alternativa1;b_alternativa_2;c_alternativa_3;d_alternativas_4', 'd', 2);
*/
INSERT INTO Questoes VALUES (NULL, 'Qual cidade do Sul do Brasil é referência em descarte de eletrônicos?', 'Curitiba (PR);Joinville (SC);Caxias do Sul (RS);Lages (SC)', 'A', 1);
INSERT INTO Questoes VALUES (NULL, 'Santa Catarina tem algum programa estadual para descarte de eletrônicos?', 'Apenas iniciativas privadas em algumas cidades;Sim, o programa Recicla SC;Só existe regulamentação federal;Não há nenhum programa específico', 'B', 1);
INSERT INTO Questoes VALUES (NULL, 'Como Porto Alegre (RS) organiza a coleta de eletrônicos?', 'Apenas em empresas privadas licenciadas;Apenas no final do ano;Com o DMLU e eventos de coleta especial;Por meio de convênios com ONGs', 'C', 1);
INSERT INTO Questoes VALUES (NULL, 'Existe algum evento fixo para descarte de eletrônicos no Sul?', 'Não existem ações fixas, só campanhas online;Apenas em municípios com mais de 500 mil habitantes;Algumas escolas promovem descarte interno;Sim, cidades como Florianópolis fazem mutirões anuais', 'D', 1);
INSERT INTO Questoes VALUES (NULL, 'Quais empresas atuam com reciclagem de eletrônicos na região Sul?', 'Copel e Celesc;Weee.do (SC);Sanepar e Corsan;Vivo e Gerdau', 'B', 1);
INSERT INTO Questoes VALUES (NULL, 'O que acontece com os eletrônicos após serem descartados corretamente?', 'São armazenados em depósitos municipais;São destruídos para evitar reuso;São desmontados e reciclados por empresas especializadas;São enviados para lixões controlados', 'C', 1);
INSERT INTO Questoes VALUES (NULL, 'Crianças e jovens participam de ações de descarte no Sul?', 'Sim, escolas realizam campanhas com os alunos;Apenas jovens do ensino médio participam;Não, apenas adultos voluntários;Só com autorização judicial', 'A', 1);
INSERT INTO Questoes VALUES (NULL, 'Existe descarte eletrônico em supermercados na região?', 'Apenas em feiras ambientais;Sim, redes como Angeloni têm pontos de coleta;Alguns mercados como Condor participam dessas ações;Não, isso é responsabilidade das prefeituras', 'B', 1);
INSERT INTO Questoes VALUES (NULL, 'O que fazer com uma bateria de notebook em cidades pequenas do Sul?', 'Jogar no lixo seco;Enterrar longe de casas e cursos d’água;Guardar até a próxima coleta itinerante;Levar a lojas de informática ou pedir orientação na prefeitura', 'D', 1);
INSERT INTO Questoes VALUES (NULL, 'As universidades do Sul do Brasil fazem coleta de e-lixo?', 'Apenas para descarte interno de equipamentos da instituição;Sim, muitas têm programas de coleta para a comunidade;Algumas apenas em datas específicas;Não, por questões legais', 'B',  1);

INSERT INTO Questoes VALUES(NULL, 'Qual é um dos maiores efeitos negativos sobre o meio ambiente resultantes do descarte inadequado de resíduos eletrônicos no Nordeste brasileiro?', 'Diminuição da poluição sonora;Aumento da diversidade biológica;Poluição do solo e da água devido a metais pesados;Desenvolvimento sustentável das comunidades locais', 'C', 2);
INSERT INTO Questoes VALUES(NULL, 'O lanço ilegal de eletrônicos é considerado crime ambiental de acordo com qual lei no Brasil?', 'Código de Trânsito Brasileiro;Lei de Crimes Ambientais (Lei nº 9.605/1998);Lei de Diretrizes Orçamentárias;Estatuto da Criança e do Adolescente', 'B',2);
INSERT INTO Questoes VALUES(NULL, 'Qual dos seguintes metais perigosos é frequentemente encontrado em lixo eletrônico e pode afetar a saúde humana?', 'Lítio;Alumínio;Mercúrio;Zinco', 'C', 2);
INSERT INTO Questoes VALUES(NULL, 'Qual dos problemas as cidades do Nordeste enfrentam quando se trata da administração do lixo eletrônico?', 'Falta de eletricidade para o processo de reciclagem;Ausência de infraestrutura adequada para coleta e tratamento;Número excessivo de aterros sanitários controlados;Exportação clandestina de resíduos', 'B', 2);
INSERT INTO Questoes VALUES(NULL, 'O que acontece com os trabalhadores informais que manipulam lixo eletrônico sem a devida proteção?', 'Recebem benefícios governamentais automaticamente;Estão amparados por políticas de saúde pública;Estão em contato com substâncias tóxicas perigosas;Trabalham apenas com materiais recicláveis não perigosos', 'C', 2);
INSERT INTO Questoes VALUES(NULL, 'Qual destes dispositivos eletrônicos apresenta mais dificuldade para ser reciclado?', 'Adaptadores de celular;Baterias de lítio;Cabos USB;CDs e DVDs', 'B', 2);
INSERT INTO Questoes VALUES(NULL, 'Um dos impactos sociais do descarte ruim de lixo eletrônico é:', 'Criação de empregos formais com registro legal;Promoção do turismo sustentável;Geração de empregos informais em situações precárias;Diminuição do custo de vida nas áreas periféricas', 'C', 2);
INSERT INTO Questoes VALUES(NULL, 'Qual órgão tem a responsabilidade de vigiar e penalizar empresas que descartam lixo eletrônico de maneira ilegal?', 'Ministério da Educação;Conselho Nacional de Trânsito;Instituto Brasileiro do Meio Ambiente (IBAMA);Ministério da Fazenda', 'C', 2);
INSERT INTO Questoes VALUES(NULL, 'Por que o lixo eletrônico é visto como uma ameaça ao meio ambiente?', 'Porque ocupa grande espaço em aterros sanitários;Porque contém substâncias químicas tóxicas que se degradam lentamente;Porque atrai animais silvestres;Porque se decompõe rapidamente', 'B', 2);
INSERT INTO Questoes VALUES(NULL, 'Qual é uma alternativa sustentável para o problema do lixo eletrônico no Nordeste?', 'Envio de resíduos para países vizinhos;Descarte em aterros longe das cidades;Formação de cooperativas para reciclagem e pontos de coleta seletiva;Incineração sem supervisão ambiental', 'C', 2);

INSERT INTO Questoes VALUES(NULL, 'Em outubro de 2024, o Instituto de Proteção Ambiental do Amazonas (Ipaam) flagrou a continuidade das atividades ilegais de um lixão clandestino na zona leste de Manaus. Qual era a principal infração cometida pelos responsáveis?', 'Descarte de resíduos hospitalares sem autorização;Importação ilegal de lixo eletrônico;Descarte irregular de resíduos domésticos e industriais, incluindo lixo eletrônico;Venda de equipamentos eletrônicos sem nota fiscal', 'C', 3);

INSERT INTO Questoes VALUES(NULL, 'Em janeiro de 2024, três pessoas foram presas em Belém por descarte irregular de lixo. Qual foi o local específico onde uma das prisões ocorreu?', 'Bairro do Jurunas;Ilha do Marajó;Distrito de Icoaraci;Bairro de Nazaré', 'A', 3);

INSERT INTO Questoes VALUES(NULL, 'Em dezembro de 2024, moradores de Porto Velho denunciaram o uso de um terreno baldio para descarte ilegal de entulhos e lixo eletrônico. Qual bairro foi palco dessa denúncia?', 'Centro;Lagoa;Nova Esperança;Industrial', 'B', 3);

INSERT INTO Questoes VALUES(NULL, 'Estudos indicam que, em 2020, mais de seis toneladas de lixo eletrônico foram descartadas em Manaus. Qual foi uma das principais causas desse descarte inadequado?', 'Falta de campanhas de conscientização;Ausência de infraestrutura adequada para coleta;Proibição de reciclagem de eletrônicos;Importação excessiva de eletrônicos', 'B', 3);

INSERT INTO Questoes VALUES(NULL, 'Qual cidade da Região Norte inaugurou a primeira Central de Logística Reversa para coleta de resíduos eletrônicos até abril de 2022?', 'Belém;Porto Velho;Manaus;Rio Branco', 'C', 3);

INSERT INTO Questoes VALUES(NULL, 'Durante uma averiguação em dezembro de 2016, foi flagrado o descarte ilegal de material eletrônico em uma área de preservação permanente em qual bairro de Bento Gonçalves?', 'São João;Cidade Alta;Licorsul;Borgo', 'A', 3);

INSERT INTO Questoes VALUES(NULL, 'Em março de 2024, um caminhão de uma empresa de “tira-entulhos” foi apreendido por descarte ilegal de resíduos em uma área pública próxima a qual Zona de Proteção Ambiental (ZPA) em Natal?', 'ZPA-1;ZPA-2;ZPA-3;ZPA-4', 'D', 3);

INSERT INTO Questoes VALUES(NULL, 'Em março de 2022, foi denunciado o despejo irregular de lixo nos arredores de qual lagoa na comunidade Laguna de Santana, no município de Cajueiro da Praia?', 'Lagoa do Portinho;Lagoa de Santa Teresa;Lagoa de Santana;Lagoa do Cajueiro', 'C', 3);

INSERT INTO Questoes VALUES(NULL, 'Qual órgão municipal de Natal foi responsável por apreender o caminhão que realizava descarte ilegal de resíduos em março de 2024?', 'Secretaria Municipal de Meio Ambiente e Urbanismo (Semurb);Secretaria Municipal de Serviços Urbanos (Semsur);Secretaria Municipal de Obras Públicas e Infraestrutura (Semopi);Secretaria Municipal de Mobilidade Urbana (STTU)', 'A', 3);

INSERT INTO Questoes VALUES(NULL, 'Qual deputada estadual denunciou o despejo irregular de lixo nos arredores da lagoa na comunidade Laguna de Santana em março de 2022?', 'Lucy Soares;Teresa Britto;Juliana Moraes Souza;Flávia Arruda', 'B', 3);




INSERT INTO Questoes VALUES(NULL, 'Em qual cidade do Sudeste brasileiro foi a primeira em inovar um sistema de coleta de lixo eletrônico em postos de combustíveis?', 'Belo Horizonte;São Paulo;Vitória;Niterói', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Qual é a principal consequência ambiental do descarte incorreto de lixo eletrônico?', 'Poluição sonora;Contaminação do solo e da água por metais pesados;Aumento da temperatura global;Interrupção do ciclo da chuva', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Qual destas instituições atua na coleta de lixo eletrônico no estado de São Paulo?', 'Instituto Nacional da Reciclagem (INARE);CEDIR – Centro de Descarte e Reúso de Resíduos de Informática;CONAMA Paulista;SAAE-SP', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Em 2023, qual estado do Sudeste teve a maior taxa de recolhimento de lixo eletrônico por habitante?', 'Espírito Santo;Minas Gerais;Rio de Janeiro;São Paulo', 'D', 4);

INSERT INTO Questoes VALUES(NULL, 'Qual desses materiais encontrados no lixo eletrônico pode ser reciclado e transformado em novos produtos?', 'Plutônio;Ouro;Urânio;Amianto', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Qual o significado da sigla PEV, frequentemente usada em campanhas de descarte correto de eletrônicos no Sudeste?', 'Programa de Eliminação de Volumes;Ponto de Entrega Voluntária;Produto Eletrônico Vencido;Plano Estadual Verde', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Qual lei brasileira estabelece a responsabilidade compartilhada pelo ciclo de vida dos produtos, incluindo eletrônicos?', 'Lei da Sustentabilidade 11.123/06;Lei de Responsabilidade Ambiental 12.305/10;Lei de Coleta e Reciclagem 10.015/09;Lei de Proteção Ambiental 13.402/11', 'B', 4);

INSERT INTO Questoes VALUES(NULL, 'Em qual dessas cidades do Espírito Santo existem pontos fixos de coleta de lixo eletrônico em shoppings e universidades?', 'Serra;Linhares;Cachoeiro de Itapemirim;Vitória', 'D', 4);
INSERT INTO Questoes VALUES(NULL, 'Qual desses componentes de um aparelho eletrônico representa risco de contaminação por chumbo?', 'Carcaça plástica;Tela de LCD;Bateria;Placa-mãe', 'D', 4);
INSERT INTO Questoes VALUES(NULL, 'Qual atitude é recomendada antes de descartar um computador em um ponto de coleta em Minas Gerais?', 'Retirar apenas os cabos;Desligar o Wi-Fi;Remover dados pessoais e o HD;Trocar o sistema operacional', 'C', 4);

INSERT INTO Questoes VALUES (NULL, 'Qual é um dos principais impactos ambientais do descarte inadequado de lixo eletrônico na região Centro-Oeste do Brasil?', 'Redução do volume de resíduos em aterros sanitários;Aumento da biodiversidade local;Contaminação do solo e da água por metais pesados;Geração de empregos informais com alta renda', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'Um dos componentes perigosos presentes em lixo eletrônico, é:', 'Alumínio reciclável;Mercúrio;Gás carbônico;Enxofre', 'B', 5);
INSERT INTO Questoes VALUES (NULL, 'O descarte irregular de lixo eletrônico pode ser classificado como:', 'Um crime de baixo impacto social;Uma infração civil comum;Um crime ambiental, conforme a Lei de Crimes Ambientais (Lei 9.605/98);Um crime tributário', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'Qual setor é mais impactado negativamente pela contaminação do solo causada por lixo eletrônico no Centro-Oeste?', 'Turismo;Agricultura;Pesca industrial;Indústria automobilística', 'B', 5);
INSERT INTO Questoes VALUES (NULL, 'Qual é uma consequência social do descarte ilegal de lixo eletrônico?', 'Incentivo ao uso consciente de tecnologia;Redução da criminalidade urbana;Aumento de doenças em catadores de materiais recicláveis;Estímulo à educação ambiental nas escolas', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'Uma das dificuldades enfrentadas pelos municípios do Centro-Oeste para lidar com o lixo eletrônico é:', 'Proibição de coleta seletiva pela legislação;Falta de aterros sanitários;Ausência de políticas públicas específicas e infraestrutura de reciclagem;Clima desfavorável para coleta de resíduos', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'Qual das opções a seguir é uma prática recomendada para lidar com o lixo eletrônico?', 'Queimar os aparelhos em terrenos baldios;Enterrar baterias em locais secos;Entregar os equipamentos em pontos de coleta autorizados;Jogar os eletrônicos no lixo comum', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'A atuação de grupos que descartam lixo eletrônico ilegalmente em áreas protegidas pode configurar também o crime de:', 'Lavagem de dinheiro;Invasão de propriedade;Poluição ambiental com agravante;Falsidade ideológica', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'O que a Política Nacional de Resíduos Sólidos (Lei nº 12.305/2010) estabelece sobre o lixo eletrônico?', 'Permite o descarte em lixões;Obriga o consumidor a reutilizar equipamentos antigos;Estimula a logística reversa e a responsabilidade compartilhada;Proíbe o consumo de produtos eletrônicos importados', 'C', 5);
INSERT INTO Questoes VALUES (NULL, 'Qual das alternativas representa uma solução sustentável para o problema do lixo eletrônico no Centro-Oeste?', 'Abertura de novos lixões para armazenar esse tipo de resíduo;Incentivo à importação de equipamentos usados;Desenvolvimento de centros de triagem e reciclagem tecnológica;Exportação de lixo eletrônico para países vizinhos', 'C', 5);

COMMIT;
