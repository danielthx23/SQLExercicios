CREATE DATABASE db_quitanda;
-- criamos um banco de dados chamado db_quitanda

USE db_quitanda;
-- selecionamos o banco de dados db_quitanda

-- criar tabela de banco de dados
CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

-- inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Tomate", 5000, "2024-05-15", 8.00);

-- inserir várias linhas no insert único
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.59),
("Pêra", 500, "2023-12-15", 2.99);

-- exibir dados da tabela
SELECT * FROM tb_produtos;

-- exibir apenas uma coluna
SELECT nome FROM tb_produtos;

-- exibir apenas duas colunas
SELECT nome,preco AS "Preço do Produto" FROM tb_produtos;

-- operadores de comparação
SELECT * FROM tb_produtos WHERE nome = "Tomate";

-- operadores de comparação
SELECT * FROM tb_produtos WHERE id > 1;

-- operadores de comparação
SELECT * FROM tb_produtos WHERE id = 1;

-- operadores de comparação
SELECT * FROM tb_produtos WHERE preco > 5 AND  quantidade > 201;

-- alteração de estrutura de uma tabela
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

UPDATE tb_produtos SET preco = 8.99 WHERE id = 1;

DELETE FROM tb_produtos;

SET SQL_SAFE_UPDATES = 1;
