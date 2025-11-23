----- Atualização de dados nas Tabelas -----
UPDATE Material
SET Permitido_Emprestimo = 0
WHERE ID_Material BETWEEN 3 AND 7 
AND Disponibilidade_do_Material = 1;

UPDATE Endereco
SET Numero_do_Endereco = 225,
    Rua_do_Endereco    = 'Rua Araguaia'
WHERE ID_Endereco = 4;

UPDATE Funcionario
SET Telefone_do_Funcionario ='(21)_99999-8888'
WHERE Nome_do_Funcionario = 'Bruno Freitas';