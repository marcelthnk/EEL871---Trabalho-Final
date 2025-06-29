SELECT Pe.Nm_Pessoa
FROM Pessoa Pe
JOIN Paciente Pa ON Pe.Cd_Pessoa = Pa.Cd_Pessoa
WHERE NOT EXISTS (
    SELECT F.Cd_Fabrica
    FROM Fabrica F
    WHERE NOT EXISTS (
        SELECT 1
        FROM Historico H
        JOIN Lote L ON H.Cd_Lote = L.Cd_Lote
        WHERE H.Cd_Paciente = Pa.Cd_Paciente
          AND L.Cd_Fabrica = F.Cd_Fabrica
    )
);


