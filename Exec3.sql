CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    datanasc DATE,
    endereco VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, nota, datanasc, endereco, email) VALUES
('Maria da Silva', 8.5, '2006-03-12', 'Rua das Flores, 123', 'maria.silva@example.com'),
('João Oliveira', 7.2, '2005-07-25', 'Avenida Principal, 456', 'joao.oliveira@example.com'),
('Ana Santos', 9.3, '2007-01-08', 'Rua das Palmeiras, 789', 'ana.santos@example.com'),
('Pedro Souza', 6.8, '2006-09-15', 'Travessa das Árvores, 321', 'pedro.souza@example.com'),
('Carla Pereira', 8.9, '2005-11-30', 'Alameda dos Anjos, 567', 'carla.pereira@example.com'),
('Lucas Fernandes', 7.5, '2007-05-20', 'Praça Central, 890', 'lucas.fernandes@example.com'),
('Juliana Lima', 9.1, '2006-02-10', 'Avenida das Estrelas, 234', 'juliana.lima@example.com'),
('Marcos Costa', 6.4, '2007-08-03', 'Rua dos Céus, 678', 'marcos.costa@example.com');

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET endereco = "Rua das Flores, 240" WHERE id = 1;
