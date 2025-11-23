----- Remoção de dados nas Tabelas -----
DELETE FROM Material
WHERE ID_Material IN (1, 2, 3);

DELETE FROM Acervo
WHERE ID_Acervo = 1;

DELETE FROM Consulta
WHERE Data_da_consulta <= '2025-05-01';