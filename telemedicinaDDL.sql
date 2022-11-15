CREATE DATABASE telemedicina;
USE telemedicina;

SHOW TABLES;

CREATE TABLE Pessoa (
	idPessoa INT AUTO_INCREMENT PRIMARY KEY,
    idEndereco INT,
    Nome VARCHAR(256) NOT NULL,
    CPF BIGINT(11) NOT NULL UNIQUE,
    CONSTRAINT fk_pessoa_endereco FOREIGN KEY(idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Endereco (
	idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    Logradouro VARCHAR(256) NOT NULL,
    Numero INT NOT NULL,
    CEP INT NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    Cidade VARCHAR(30) NOT NULL,
    Estado VARCHAR(20) NOT NULL
);

CREATE TABLE Telefone (
	idTelefone INT AUTO_INCREMENT PRIMARY KEY,
    idTelefone_Tipo INT,
    Numero INT NOT NULL,
    DDD INT NOT NULL,
    CONSTRAINT fk_telefone_tipo FOREIGN KEY(idTelefone_Tipo) REFERENCES Telefone_Tipo(idTelefone_Tipo)
);

CREATE TABLE Telefone_Tipo (
	idTelefone_Tipo INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(10) NOT NULL
);

CREATE TABLE Pessoa_Telefone (
	idPessoa INT,
    idTelefone INT,
    CONSTRAINT fk_PHT_pessoa FOREIGN KEY(idPessoa) REFERENCES Pessoa(idPessoa),
    CONSTRAINT fk_PHT_telefone FOREIGN KEY(idTelefone) REFERENCES Telefone(idTelefone)
);