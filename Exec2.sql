CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2),
    quantidade INT,
    descricao VARCHAR(255),
    categoria VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco, descricao, categoria) VALUES 
("E-Book", 100, 100.00, "Livro Eletrônico", "Eletrônico"),
("Smartphone", 50, 500.00, "Telefone Inteligente", "Eletrônico"),
("Headphones", 200, 50.00, "Fones de Ouvido", "Eletrônico"),
("T-Shirt", 300, 20.00, "Camiseta", "Vestuário"),
("Backpack", 80, 40.00, "Mochila", "Acessório"),
("Sunglasses", 120, 30.00, "Óculos de Sol", "Acessório");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 600.00 WHERE id = 1;