INSERT INTO Fabrica (Cd_Endereco, Nm_Fabricante)
VALUES
    (5,'Palmas_Fabrica');

INSERT INTO Vacina (Nm_Vacina, Ds_Vacina)
VALUES
    ('Palma_Vacina','Palma_Conhecimento');

SELECT
    F.Cd_Fabrica,
    F.Nm_Fabricante,
    V.Cd_Vacina,
    V.Nm_Vacina
FROM Lote L
FULL JOIN Fabrica F ON F.Cd_Fabrica = L.Cd_Fabrica
FULL JOIN Vacina V ON V.Cd_Vacina = L.Cd_Vacina;



