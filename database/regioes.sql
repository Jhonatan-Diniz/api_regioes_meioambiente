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

COMMIT;
