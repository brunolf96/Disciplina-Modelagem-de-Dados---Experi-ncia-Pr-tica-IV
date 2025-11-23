----- Tabela Acervo
CREATE TABLE Acervo (
    ID_Acervo INTEGER PRIMARY KEY AUTOINCREMENT,
    Quantidade_de_Itens INTEGER NOT NULL,
    Nome_do_Item TEXT(100) NOT NULL,
    Tipo_de_item TEXT(20) ,
    Numero_de_paginas INTEGER
);

----- Tabela Material
CREATE TABLE Material (
    ID_Material INTEGER PRIMARY KEY AUTOINCREMENT,
    Permitido_Emprestimo BOOLEAN NOT NULL,
    Disponibilidade_do_material BOOLEAN NOT NULL,
    ID_Acervo INTEGER,
    FOREIGN KEY (ID_Acervo) REFERENCES Acervo(ID_Acervo)
);

----- Tabela Consulta
CREATE TABLE Consulta (
    ID_Consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_da_consulta DATE NOT NULL,
    ID_Funcionario INTEGER,
    ID_Estudante INTEGER,
    ID_Acervo INTEGER,
    ID_Material INTEGER,
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario),
    FOREIGN KEY (ID_Estudante) REFERENCES Estudante(ID_Estudante),
    FOREIGN KEY (ID_Acervo) REFERENCES Acervo(ID_Acervo),
    FOREIGN KEY (ID_Material) REFERENCES Material(ID_Material)
);

----- Tabela Estudante
CREATE TABLE Estudante (
    ID_Estudante INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_do_Estudante TEXT(100) NOT NULL,
    Telefone_do_Estudante TEXT(20) NOT NULL,
    ID_Endereco INTEGER,
    FOREIGN KEY (ID_Endereco) REFERENCES Endereco(ID_Endereco)
);

----- Tabela Reserva
CREATE TABLE Reserva (
    ID_Reserva INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_da_Reserva DATE NOT NULL,
    Data_Limite DATE NOT NULL,
    ID_Estudante INTEGER,
    ID_Material INTEGER,
    FOREIGN KEY (ID_Estudante) REFERENCES Estudante(ID_Estudante),
    FOREIGN KEY (ID_Material) REFERENCES Material(ID_Material)
);

----- Tabela Cobranca
CREATE TABLE Cobranca (
    ID_Cobranca INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_da_cobranca DATE NOT NULL,
    ID_Estudante INTEGER,
    ID_Pendencia INTEGER,
    ID_Funcionario INTEGER,
    FOREIGN KEY (ID_Estudante) REFERENCES Estudante(ID_Estudante),
    FOREIGN KEY (ID_Pendencia) REFERENCES Pendencia(ID_Pendencia),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

----- Tabela Pendencia
CREATE TABLE Pendencia (
    ID_Pendencia INTEGER PRIMARY KEY AUTOINCREMENT,
    Prazo_limite_da_solucao DATE NOT NULL,
    Descricao_da_Penalidade TEXT(50) NOT NULL,
    Descricao_da_Pendencia TEXT(50) NOT NULL,
    ID_Estudante INTEGER,
    FOREIGN KEY (ID_Estudante) REFERENCES Estudante(ID_Estudante)
);

----- Tabela Emprestimo
CREATE TABLE Emprestimo (
    ID_Emprestimo INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_do_Emprestimo DATE NOT NULL,
    Data_de_Devolucao DATE NOT NULL,
    ID_Estudante INTEGER,
    ID_Material INTEGER,
    ID_Funcionario INTEGER,
    FOREIGN KEY (ID_Estudante) REFERENCES Estudante(ID_Estudante)
    FOREIGN KEY (ID_Material) REFERENCES Material(ID_Material)
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

----- Tabela Cargo
CREATE TABLE Cargo (
    ID_Cargo INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_do_Cargo TEXT(50) NOT NULL
);

----- Tabela Funcionario
CREATE TABLE Funcionario (
    ID_Funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_do_Funcionario TEXT(100) NOT NULL,
    Telefone_do_Funcionario TEXT(20) NOT NULL,
    ID_Endereco INTEGER,
    ID_Cargo INTEGER,
    FOREIGN KEY (ID_Endereco) REFERENCES Endereco(ID_Endereco)
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo(ID_Cargo)
);

----- Tabela Endereco
CREATE TABLE Endereco (
    ID_Endereco INTEGER PRIMARY KEY AUTOINCREMENT,
    Rua_do_Endereco TEXT(100) NOT NULL,
    Numero_do_Endereco TEXT(10) NOT NULL,
    Cidade_do_Endereco TEXT(100) NOT NULL,
    Estado_do_Endereco TEXT(2) NOT NULL
);