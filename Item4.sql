BEGIN TRANSACTION;
INSERT INTO Pessoa (Dt_Nascimento, Nm_Pessoa, Cd_CPF)
VALUES ('2000-10-01', 'Miguel da Silva', '12345678900');
COMMIT;

BEGIN TRANSACTION;
DELETE From Pessoa
WHERE Nm_Pessoa = 'Miguel da Silva';
ROLLBACK;
