----- Consulta de Tabelas -----
SELECT * FROM Acervo;
SELECT * FROM Material;
SELECT * FROM Consulta;
SELECT * FROM Estudante;
SELECT * FROM Reserva;
SELECT * FROM Cobranca;
SELECT * FROM Pendencia;
SELECT * FROM Emprestimo;
SELECT * FROM Cargo;
SELECT * FROM Funcionario;
SELECT * FROM Endereco;

SELECT * 
FROM Material 
WHERE ID_Acervo = 5;

SELECT * 
FROM Emprestimo 
ORDER BY Data_do_Emprestimo DESC;

SELECT Data_da_consulta, ID_Estudante, ID_Acervo, ID_Material 
FROM Consulta 
WHERE ID_Estudante = 1 
LIMIT 2;

SELECT C.Data_da_consulta, E.Nome_do_Estudante, A.Nome_do_Item
FROM Consulta C 
INNER JOIN Acervo A ON C.ID_Acervo = A.ID_Acervo
INNER JOIN Estudante E ON C.ID_Estudante = E.ID_Estudante
WHERE C.ID_Estudante = 1;