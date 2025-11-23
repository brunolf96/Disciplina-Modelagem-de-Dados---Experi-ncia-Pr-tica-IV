----- Remoção de dados nas Tabelas -----

----- Remoção de um conjunto de materiais que não estão mais presentes na biblioteca
DELETE FROM Material
WHERE ID_Material IN (1, 2, 3);

----- Remoção de um item do acervo que não tem mais exemplares presentes na biblioteca
DELETE FROM Acervo
WHERE ID_Acervo = 1;

----- Remoção dos registros mais antigos
DELETE FROM Consulta
WHERE Data_da_consulta <= '2025-05-01';

