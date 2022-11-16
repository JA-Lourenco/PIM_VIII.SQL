USE telemedicina;

SELECT P.CPF, p.Nome, e.* FROM Pessoa p
LEFT JOIN Endereco e ON e.idEndereco = p.idEndereco;

SELECT * FROM Telefone f 
LEFT JOIN Telefone_Tipo t ON t.idTelefone_Tipo = f.idTelefone_Tipo;

INSERT INTO Endereco (Logradouro, Numero, CEP, Bairro, Cidade, Estado)
VALUES ('Rua Teste Um', 00, 74000000, 'Bairro Teste Um', 'Cidade Teste Um', 'Estado Teste Um'),
		('Rua Teste Dois', 02, 72000000, 'Bairro Teste Dois', 'Cidade Teste Dois', 'Estado Teste Dois'),
        ('Rua Teste Tres', 03, 73000000, 'Bairro Teste Tres', 'Cidade Teste Tres', 'Estado Teste Tres');

SELECT * FROM Endereco;

INSERT INTO Pessoa (idEndereco, Nome, CPF)
VALUES (1, 'Pessoa Teste Um', 12345678911),
		(2, 'Pessoa Teste Dois', 12345678912),
        (3, 'Pessoa Teste Tres', 12345678913);

SELECT * FROM Pessoa;

INSERT INTO Telefone_Tipo (Tipo)
VALUES ('Comercial'),
		('Residencial'),
        ('Celular');
        
SELECT * FROM Telefone_Tipo;

INSERT INTO Telefone (idTelefone_Tipo, Numero, DDD)
VALUES (1, 38195777, 84),
		(2, 29226154, 15),
        (3, 988579695, 62);

SELECT * FROM Telefone;