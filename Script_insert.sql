----- Tabela Acervo
INSERT INTO Acervo(Quantidade_de_Itens, Nome_do_Item, Tipo_de_item, Numero_de_paginas)
VALUES
(2, 'Livro 1', 'Tipo 1 do Acervo', 357),
(5, 'Livro 2', 'Tipo 1 do Acervo', 282),
(3, 'Livro 3', 'Tipo 2 do Acervo', 52),
(2, 'Livro 4', 'Tipo 1 do Acervo', 297),
(5, 'Livro 5', 'Tipo 2 do Acervo', 63);

----- Tabela Material
INSERT INTO Material(Permitido_Emprestimo, Disponibilidade_do_material, ID_Acervo)
VALUES
(0, 1, 1),
(1, 1, 1),
(0, 1, 2),
(0, 1, 2),
(1, 0, 2),
(1, 1, 2),
(1, 0, 2), 
(0, 1, 3),
(1, 0, 3), 
(1, 1, 3),
(0, 1, 4),
(1, 0, 4),
(0, 1, 5),
(1, 0, 5),
(1, 1, 5),
(1, 1, 5),
(1, 1, 5);

----- Tabela Endereco
INSERT INTO Endereco(Rua_do_Endereco, Numero_do_Endereco, Cidade_do_Endereco, Estado_do_Endereco)
VALUES
('Rua Potiguara', '218', 'Rio de Janeiro', 'RJ'),
('Estrada de Jacarepaguá', '7090', 'Rio de Janeiro', 'RJ'),
('Rua Potiguara', '220', 'Rio de Janeiro', 'RJ'),
('Rua Potiguara', '230', 'Rio de Janeiro', 'RJ'),
('Rua Potiguara', '240', 'Rio de Janeiro', 'RJ');

----- Tabela Cargo
INSERT INTO Cargo(Nome_do_Cargo)
VALUES
('Bibliotecario'),
('Administrador');

----- Tabela Funcionario
INSERT INTO Funcionario(Nome_do_Funcionario, Telefone_do_Funcionario, ID_Endereco, ID_Cargo)
VALUES
('Bruno Freitas', '(21)_98877-6655', 1, 2), 
('Paula Bittencourt', '(21)_91122-3344', 2, 1);

----- Tabela Estudante
INSERT INTO Estudante(Nome_do_Estudante, Telefone_do_Estudante, ID_Endereco)
VALUES
('Pedro', '(21)_95566-7788', 3),
('Ana', '(21)_93322-4455', 4),
('Marcelo', '(21)_92211-7788', 5);

----- Tabela Consulta
INSERT INTO Consulta(Data_da_consulta, ID_Funcionario, ID_Estudante, ID_Acervo, ID_Material)
VALUES
('2025-03-02', NULL, 1, 2, 5),
('2025-03-06', NULL, 1, 3, 9),
('2025-04-02', 2, NULL, 2, 7),
('2025-05-08', 2, NULL, 4, 12),
('2025-05-08', 2, NULL, 5, 14),
('2025-05-08', NULL, 1, 5, 14);

----- Tabela Reserva
INSERT INTO Reserva(Data_da_Reserva, Data_Limite, ID_Estudante, ID_Material)
VALUES
('2025-05-15', '2025-06-18', 1, 14);

----- Tabela Emprestimo
INSERT INTO Emprestimo(Data_do_Emprestimo, Data_de_Devolucao, ID_Estudante, ID_Material, ID_Funcionario) 
VALUES
('2025-03-02', '2025-04-02', 1, 5, 2),
('2025-03-06', '2025-04-06', 1, 9, 2),
('2025-04-02', '2025-05-02', 2, 7, 2),
('2025-05-08', '2025-06-08', 3, 12, 2),
('2025-05-08', '2025-06-08', 3, 14, 2);

----- Tabela Pendencia
INSERT INTO Pendencia(Prazo_limite_da_solucao, Descricao_da_Penalidade, Descricao_da_Pendencia, ID_Estudante)
VALUES
('2025-05-12', 'Nao podera solicitar um novo emprestimo durante 3 meses', 'Nao devolveu o material emprestado dentro do prazo', 3);

----- Tabela Cobranca
INSERT INTO Cobranca(Data_da_cobranca, ID_Estudante, ID_Pendencia, ID_Funcionario)
VALUES
('2025-05-03', 2, 1, 1);
