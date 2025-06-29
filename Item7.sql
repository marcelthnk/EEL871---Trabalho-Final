CREATE PROCEDURE Pacientes_Com_Vacina_Vencida
AS
BEGIN
    SELECT
        Pe.Nm_Pessoa AS Nome_Paciente,
        Pa.Cd_Paciente,
        H.Cd_Lote,
        H.Dt_Vacinacao,
        DATEADD(DAY, L.Pz_Validade, L.Dt_Fabricacao) AS Dt_Validade
    FROM Historico H
    JOIN Paciente Pa ON H.Cd_Paciente = Pa.Cd_Paciente
    JOIN Pessoa Pe ON Pa.Cd_Pessoa = Pe.Cd_Pessoa
    JOIN Lote L ON H.Cd_Lote = L.Cd_Lote
    WHERE H.Dt_Vacinacao > DATEADD(DAY, L.Pz_Validade, L.Dt_Fabricacao);
END;
EXEC Pacientes_Com_Vacina_Vencida;