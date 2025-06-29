DECLARE
    @Dt_Vacinacao DATETIME,
    @Nm_Paciente CHAR(50),
    @Cd_Lote INT,
    @Nm_Fabrica CHAR(50);

DECLARE Cursor_Vacinas CURSOR FOR
SELECT
    H.Dt_Vacinacao,
    P.Nm_Pessoa,
    L.Cd_Lote,
    F.Nm_Fabricante
FROM Historico H
JOIN Paciente Pa ON H.Cd_Paciente = Pa.Cd_Paciente
JOIN Pessoa P ON Pa.Cd_Pessoa = P.Cd_Pessoa
JOIN Lote L ON H.Cd_Lote = L.Cd_Lote
JOIN Fabrica F ON L.Cd_Fabrica = F.Cd_Fabrica;

OPEN Cursor_Vacinas;

FETCH NEXT FROM Cursor_Vacinas INTO @Dt_Vacinacao, @Nm_Paciente, @Cd_Lote, @Nm_Fabrica;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Data: ' + CONVERT(VARCHAR, @Dt_Vacinacao, 120)
        + ' | Paciente: ' + @Nm_Paciente
        + ' | Lote: ' + CAST(@Cd_Lote AS VARCHAR)
        + ' | Fabricante: ' + @Nm_Fabrica;

    FETCH NEXT FROM Cursor_Vacinas INTO @Dt_Vacinacao, @Nm_Paciente, @Cd_Lote, @Nm_Fabrica;
END

CLOSE Cursor_Vacinas;
DEALLOCATE Cursor_Vacinas;
