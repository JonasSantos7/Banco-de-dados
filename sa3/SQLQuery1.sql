--criação do banco de dado 
CREATE DATABASE TesteSegurancaBE7FS4;

--colocar o banco de dados em uso
USE TesteSegurancaBE7FS4;

--criação de uma tabela para armazenar usúarios 
CREATE TABLE Usuarios 
(
   Id INT PRIMARY KEY IDENTITY,
   Email VARCHAR(100) UNIQUE NOT NULL,
   Senha VARCHAR(50) NOT NULL
);

--Consulta a todos os dados da tabela criada
SELECT * FROM Usuarios; 

--Cadastrar um Usuário no banco de dados
INSERT INTO Usuarios VALUES ('email@gmail.com', 1234);
INSERT INTO Usuarios VALUES ('jonas@gmail.com.br', 'vip1234');

--hasheando dados em uma consulta 
SELECT Id, Email, HASHBYTES('MD2',Senha) FROM Usuarios; --HASHBYTES(dois argumentos - primeiro o algoritmo e o segundo a hashear)

--hashenado dados e filtrando apenas um usuário
SELECT Id, Email, HASHBYTES('MD2',Senha) FROM Usuarios WHERE ID = 1;

--hasheando dados e filtrando apenas um usuário e dando apelidos para a coluna hasheada
SELECT Id, Email, HASHBYTES('MD2',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo MD4 (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('MD4',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo MD5 (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('MD5',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo SHA (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('SHA',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo SHA1 (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('SHA1',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo SHA2_256 (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('SHA2_256',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

--utilizando algoritmo SHA2_512 (seguindo os últimos exemplos de linhasxcolunas)
SELECT Id, Email, HASHBYTES('SHA2_512',Senha) AS 'Senha Hash' FROM usuarios where id = 1;

