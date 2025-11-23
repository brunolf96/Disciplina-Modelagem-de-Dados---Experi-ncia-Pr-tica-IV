----- Consulta de Tabelas -----

----- Consultas simples e sem condições para todas as tabelas
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

----- Consulta de um item específico do acervo da biblioteca
SELECT * 
FROM Material 
WHERE ID_Acervo = 5;

----- Consulta dos empréstimos de forma que o primeiro registro seja o mais recente
SELECT * 
FROM Emprestimo 
ORDER BY Data_do_Emprestimo DESC;

----- Busca das 2 consultas mais recentes do estudante idenficado pelo ID_Estudante = 1
SELECT Data_da_consulta, ID_Estudante, ID_Acervo, ID_Material 
FROM Consulta 
WHERE ID_Estudante = 1 
ORDER BY Data_da_consulta DESC
LIMIT 2;

----- Busca mais complexa com integração de tabelas de forma que possamos ver as consultas de um estudante com a identificação do seu nome e do nome do item do acervo que consultou
SELECT C.Data_da_consulta, E.Nome_do_Estudante, A.Nome_do_Item
FROM Consulta C 
INNER JOIN Acervo A ON C.ID_Acervo = A.ID_Acervo
INNER JOIN Estudante E ON C.ID_Estudante = E.ID_Estudante
WHERE C.ID_Estudante = 1;
