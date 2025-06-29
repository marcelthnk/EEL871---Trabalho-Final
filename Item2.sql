INSERT INTO Pais (Nm_Pais)
VALUES
    ('Paraguai'),
    ('Bolívia'),
    ('Chile'),
    ('Uruguai'),
    ('Argentina');
INSERT INTO Estado (Cd_Pais, Nm_Estado)
VALUES
    (1,'Rio de Janeiro'),
    (1,'São Paulo'),
    (1,'Minas Gerais'),
    (1,'Espiríto Santo'),
    (1,'Ceará');
INSERT INTO Cidade (Cd_Estado, Nm_Cidade)
VALUES
    (1,'Rio de Janeiro'),
    (1,'Niterói'),
    (1,'São Gonçalo'),
    (1,'Cabo Frio'),
    (1,'Angra dos Reis');
INSERT INTO Bairro(Cd_Cidade, Nm_Bairro)
VALUES
    (1,'Tijuca'),
    (1,'Taquara'),
    (1,'Curicica'),
    (1,'Vila Isabel'),
    (1,'Humaitá');
INSERT INTO Tipo_Logradouro(Ds_Tipo_Logradouro)
VALUES
    ('Rua'),
    ('Avenida'),
    ('Travessa'),
    ('Praça'),
    ('Estrada');
INSERT INTO Logradouro(Nm_Logradouro)
VALUES
    ('Geraldo Martins Ourívio'),
    ('Vice Presidente José Alencar'),
    ('São Francisco Xavier'),
    ('Dom Helder Câmara'),
    ('Rua General Canabarro');
INSERT INTO Endereco(Nu_Numero, Ds_Complemento, Cd_CEP, Cd_Logradouro, Cd_Bairro, Cd_Tipo_Logradouro)
VALUES
    (15,NULL,'22723340',1,2,1),
    (180,'101','20550013',3,1,1),
    (1455,'Bloco 3, APT 1304','22775033',2,3,2),
    (35,'303','20271202',5,6,1),
    (5474,'Norte Shopping','20771004',4,7,2);
INSERT INTO Pessoa (Dt_Nascimento, Nm_Pessoa, Cd_CPF)
VALUES
    ('2003-10-25','Miguel Badany Cerne','15364217321'),
    ('2004-08-05','Ricardo Amaral de Abreu Lasmar Rei','09912332312'),
    ('2003-10-09','Marcelo Firmino Ribeiro', '14266677782'),
    ('2004-08-11','Umberto Augusto Pinto Pereira','14267733321'),
    ('2004-07-22','Thiago Cabral Dutra da Silva','93212389902');
INSERT INTO Endereco (Nu_Numero, Ds_Complemento, Cd_CEP, Cd_Logradouro, Cd_Bairro, Cd_Tipo_Logradouro)
VALUES
    (1500, NULL, '05503900', 6, 8, 2),
    (4365, NULL, '21040090', 7, 9, 2),
    (80,   NULL, '30510010', 8, 10, 1),
    (64,   NULL, '24230410', 9, 11, 1),
    (NULL, NULL, '13974900', 10, 12, 6);
INSERT INTO Logradouro (Nm_Logradouro)
VALUES
    ('Doutor Vital Brasil'),
    ('Brasil'),
    ('Conde Pereira Carneiro'),
    ('Maestro Jose Botelho'),
    ('Itapira-Lindoia');
INSERT INTO Bairro (Nm_Bairro, Cd_Cidade)
VALUES
    ('Butantã',6),
    ('Manguinhos',1),
    ('Gameleira',7),
    ('Vital Brazil',8),
    ('Ponte Preta',9);
INSERT INTO Cidade (Nm_Cidade, Cd_Estado)
VALUES
    ('São Paulo',2),
    ('Belo Horizonte',3),
    ('Niterói',1),
    ('Itapira',2);
INSERT INTO Tipo_Logradouro (Ds_Tipo_Logradouro)
VALUES
    ('Rodovia')
INSERT INTO Fabrica (Cd_Endereco,Nm_Fabricante)
VALUES
    (7,'Instituto Butantan'),
    (8,'Bio-Manguinhos / Fiocruz'),
    (9,'Fundação Ezequiel Dias (FUNED)'),
    (10,'Instituto Vital Brazil'),
    (11,'Laboratório Cristália');
INSERT INTO Vacina (Nm_Vacina, Ds_Vacina)
VALUES
    ('CoronaVac', 'Viral Inativada'),
    ('AstraZeneca', 'Vetor Viral'),
    ('Pfizer-BioNTech', 'mRNA'),
    ('Hepatite B', 'Recombinante'),
    ('Febre Amarela', 'Viral Atenuada');
INSERT INTO Lote (Cd_Fabrica, Cd_Vacina, Dt_Fabricacao, Qt_Vacinas, Pz_Validade)
VALUES
    (1,1,'2025-01-01 10:00',50,20),
    (2,2,'2025-02-01 11:00',60,30),
    (3,3,'2025-03-01 12:00',70,40),
    (4,4,'2025-04-01 13:00',80,50),
    (5,5,'2025-05-01 14:00',90,60);
INSERT INTO Bairro (Nm_Bairro, Cd_Cidade)
VALUES
    ('Del Castilho',1),
    ('Olaria',1),
    ('Centro',1),
    ('Botafogo',1),
    ('Bonsucesso',1);
INSERT INTO Logradouro (Nm_Logradouro)
VALUES
    ('Uranos'),
    ('México'),
    ('São Clemente'),
    ('Coração de Maria');
INSERT INTO Endereco (Nu_Numero, Ds_Complemento, Cd_CEP, Cd_Logradouro, Cd_Bairro, Cd_Tipo_Logradouro)
VALUES
    (1500, NULL, '20765002', 4, 13, 2),
    (4365, NULL, '21040170', 11, 14, 1),
    (128,  NULL, '20031090', 12, 15, 1),
    (64,   NULL, '22250900', 13, 16, 1),
    (NULL, NULL, '21041050', 14, 17, 1);
INSERT INTO Unidade_Vacinacao (Nm_Unidade_Vacinacao, Cd_Endereco)
VALUES
    ('Centro Municipal de Saúde João Barros Barreto',      12),
    ('Clínica da Família Sérgio Vieira de Mello',          13),
    ('Centro Municipal de Saúde Heitor Beltrão',           14),
    ('Policlínica Piquet Carneiro',                        15),
    ('Instituto Nacional de Infectologia Evandro Chagas',  16);
INSERT INTO Pessoa (Dt_Nascimento, Nm_Pessoa, Cd_CPF)
VALUES
    ('2005-03-02','Júlia Erthal Pires Vaz', 12567898712),
    ('2000-01-01','João Silva e Costa',98765432191),
    ('2001-01-01','Maria José da Silva',87654321981),
    ('2002-01-01','Pedro Antonio da Cunha',76543278921),
    ('2003-01-01','Ricardo Felipe Silveira',34567832191);
INSERT INTO Endereco_Pessoa (Ds_Tipo_Endereco, Cd_Pessoa, Cd_Endereco)
VALUES
    ('Residencial',1,2),
    ('Residencial',2,4),
    ('Profissional',3,3),
    ('Profissional',4,6),
    ('Profissional',5,6);
INSERT INTO Vacinador (Cd_Pessoa)
VALUES
    (6),
    (7),
    (8),
    (9),
    (10);
INSERT INTO Paciente (Cd_Pessoa)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5);
INSERT INTO Historico (Dt_Vacinacao, Ds_Dose, Cd_Unidade_Vacinacao, Cd_Vacinador, Cd_Paciente, Cd_Lote)
VALUES
    ('2025-06-01 12:00','Primeira',3,1,3,1),
    ('2025-05-01 12:00','Primeira',3,1,3,2),
    ('2025-04-01 12:00','Primeira',3,1,3,3),
    ('2025-03-01 12:00','Primeira',3,1,3,4),
    ('2025-02-01 12:00','Primeira',3,1,3,5);


SELECT 'Historico' AS Tabela, COUNT (*) AS Cardinalidade FROM Historico
UNION ALL
SELECT 'Bairro', COUNT (*) FROM Bairro
UNION ALL
SELECT 'Cidade', COUNT (*) FROM Cidade
UNION ALL
SELECT 'Endereco', COUNT (*) FROM Endereco
UNION ALL
SELECT 'Endereco_Pessoa', COUNT (*) FROM Endereco_Pessoa
UNION ALL
SELECT 'Estado', COUNT (*) FROM Estado
UNION ALL
SELECT 'Fabrica', COUNT (*) FROM Fabrica
UNION ALL
SELECT 'Logradouro', COUNT (*) FROM Logradouro
UNION ALL
SELECT 'Lote', COUNT (*) FROM Lote
UNION ALL
SELECT 'Paciente', COUNT (*) FROM Paciente
UNION ALL
SELECT 'Pais', COUNT (*) FROM Pais
UNION ALL
SELECT 'Pessoa', COUNT (*) FROM Pessoa
UNION ALL
SELECT 'Tipo_Logradouro', COUNT (*) FROM Tipo_Logradouro
UNION ALL
SELECT 'Unidade_Vacinacao', COUNT (*) FROM Unidade_Vacinacao
UNION ALL
SELECT 'Vacina', COUNT (*) FROM Vacina
UNION ALL
SELECT 'Vacinador', COUNT (*) FROM Vacinador
ORDER BY Cardinalidade DESC;


















