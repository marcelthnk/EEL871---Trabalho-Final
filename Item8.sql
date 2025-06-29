CREATE TRIGGER trg_DT_Vacinacao_NULL
ON Historico
AFTER INSERT
AS
BEGIN
    -- atualiza Dt_Vacinacao com GETDATE() apenas onde veio NULL
    UPDATE H
    SET H.Dt_Vacinacao = GETDATE()
    FROM Historico H
    -- inserted, eh uma tabela temporaria que contem as linhas que foram inseridas ou modificadas
    -- vem por padrao disponibilizada pelo SQL Server
    JOIN inserted i ON H.Cd_Historico = i.Cd_Historico
    WHERE i.Dt_Vacinacao IS NULL;
END;

INSERT INTO Historico (Cd_Paciente, Ds_Dose, Dt_Vacinacao, Cd_Lote, Cd_Vacinador, Cd_Unidade_Vacinacao)
VALUES
    (3, 'Reforço', NULL, 1, 1, 1);

INSERT INTO Historico (Cd_Paciente, Ds_Dose, Dt_Vacinacao, Cd_Lote, Cd_Vacinador, Cd_Unidade_Vacinacao)
VALUES
    (3, 'Reforço', '2025-05-01', 2, 1, 1);

CREATE OR ALTER TRIGGER trg_DT_Vacinacao_NULL
ON Historico
AFTER INSERT
AS
BEGIN
    -- atualiza a data de vacinação apenas se for NULL, usando horário de Brasília
    UPDATE H
    SET H.Dt_Vacinacao =
        CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'UTC' AT TIME ZONE 'E. South America Standard Time' AS DATETIME)
    FROM Historico H
    JOIN inserted i ON H.Cd_Historico = i.Cd_Historico
    WHERE i.Dt_Vacinacao IS NULL;
END;

INSERT INTO Historico (Cd_Paciente, Ds_Dose, Dt_Vacinacao, Cd_Lote, Cd_Vacinador, Cd_Unidade_Vacinacao)
VALUES
    (3, 'Reforço', NULL, 3, 1, 1);
