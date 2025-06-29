CREATE VIEW Lotes_Vencidos AS
SELECT *
FROM Lote
WHERE DATEADD (DAY, Pz_Validade, Dt_Fabricacao) < GETDATE();

SELECT * FROM Lotes_Vencidos;