ALTER TABLE Lote
ADD CONSTRAINT Qt_Max
CHECK (Qt_Vacinas < 100);

INSERT INTO Lote (Cd_Fabrica, Cd_Vacina, Dt_Fabricacao, Qt_Vacinas, Pz_Validade)
VALUES
    (1,1,'2025-06-29',100,10);

INSERT INTO Lote (Cd_Fabrica, Cd_Vacina, Dt_Fabricacao, Qt_Vacinas, Pz_Validade)
VALUES
    (1,1,'2025-06-29',101,10);
