CREATE DATABASE db_rhempresa;

USE db_rhempresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2),
    experiencia INT NOT NULL,
    habilidades VARCHAR(255),
    nivelengajamento VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, experiencia, habilidades, nivelengajamento) VALUES 
("Daniel Saburo Akiyama", "Desenvolvedor Java", 2000.0, 2, "SQL, JAVA, ELIXIR", "Médio"),
("Paula dos Campos", "UX Designer", 3000.0, 2, "Figma, Forms", "Alto"),
("Danilo da Silva", "Database Analyst", 5000.0, 4, "SQL, NoSQL, Oracle Database, AWS", "Alto"),
("João Gonçalves", "UI Designer", 6000.0, 1, "Figma, Adobe Ilustrator", "Baixo"),
("Hellmat Gabriel", "Tech Lead", 10000.0, 8, "SQL, NoSQL, Oracle Database, AWS, Figma, Adobe Ilustrator, SQL, NoSQL, Oracle Database, AWS", "Alto");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1000 WHERE id = 1;
