BEGIN TRANSACTION;
/*
CREATE TABLE Regioes(
    RegiaoId INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    Gases TEXT NOT NULL,
    lixo_eletronico TEXT NOT NULL,
    numero_habitantes INTEGER NOT NULL
);

INSERT INTO Regioes VALUES(NULL, 'sul', '100', '1000', 10000);
INSERT INTO Regioes VALUES(NULL, 'nordeste', '200', '2000',  20000);
INSERT INTO Regioes VALUES(NULL, 'norte', '300', '3000', 3000);
INSERT INTO Regioes VALUES(NULL, 'sudeste', '400', '4000', 40000);
INSERT INTO Regioes Values(NULL, 'centro-oeste', '500', '5000', 50000);


CREATE TABLE Questoes(
    QuestoesId INTEGER PRIMARY KEY AUTOINCREMENT,
    Pergunta TEXT NOT NULL,
    Alternativas TEXT NOT NULL,
    Correta TEXT NOT NULL,
    RegiaoId INTEGER NOT NULL,
    FOREIGN KEY(RegiaoId) REFERENCES Regioes(RegiaoId)
);

INSERT INTO Questoes VALUES(NULL, 'Meu fi quer bolacha?', 'a_nao;b_nao;c_nao;d_nap', 'd', 1);
INSERT INTO Questoes VALUES(NULL, 'Meu fi quer cachaca?', 'a_mimdepapai;b_mimdepapai;c_mimdepapai;d_mimdepapai', 'a', 1);
INSERT INTO Questoes VALUES(NULL, 'QUESTAO NOVA', '{a: "aaaaaa", b: "bbbbb", c: "cccccc", d:"dddddddd"}', 'd', 2);
*/
COMMIT;
