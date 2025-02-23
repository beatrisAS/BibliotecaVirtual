-- Criando o banco de dados
CREATE DATABASE BibliotecaVirtual;
USE BibliotecaVirtual;

-- Criando a tabela Filial
CREATE TABLE Filial (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    logradouro VARCHAR(150) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(9) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Criando a tabela Livro
CREATE TABLE Livro (
    ISBN VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    editora VARCHAR(100) NOT NULL,
    num_exemplares INT NOT NULL DEFAULT 1,
    genero VARCHAR(50) NOT NULL,
    filial_codigo INT NOT NULL,
    FOREIGN KEY (filial_codigo) REFERENCES Filial(codigo) ON DELETE CASCADE
);
