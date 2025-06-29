INSERT INTO Lote (Cd_Fabrica, Cd_Vacina, Dt_Fabricacao, Qt_Vacinas, Pz_Validade)
VALUES
    (1,1,'2025-06-01',20,10);

CREATE VIEW Lotes_Proximos_Ou_Vencidos AS
SELECT
    Cd_Lote,
    Cd_Fabrica,
    Cd_Vacina,
    Dt_Fabricacao,
    Pz_Validade,
    Qt_Vacinas,
    DATEADD(DAY, Pz_Validade, Dt_Fabricacao) AS Dt_Validade,
    'VENCIMENTO_EM_BREVE' AS Status_Lote
FROM Lote
WHERE DATEADD(DAY, Pz_Validade, Dt_Fabricacao) BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE())

UNION

SELECT
    Cd_Lote,
    Cd_Fabrica,
    Cd_Vacina,
    Dt_Fabricacao,
    Pz_Validade,
    Qt_Vacinas,
    DATEADD(DAY, Pz_Validade, Dt_Fabricacao) AS Dt_Validade,
    'VENCIDO_RECENTE' AS Status_Lote
FROM Lote
WHERE DATEADD(DAY, Pz_Validade, Dt_Fabricacao) BETWEEN DATEADD(DAY, -30, GETDATE()) AND GETDATE();
