CREATE DATABASE dimensaoX;
USE dimensaoX;

CREATE TABLE jogadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_responsavel VARCHAR(60) NOT NULL,
    clube VARCHAR(80) NOT NULL,
    atleta VARCHAR(100) NOT NULL,
    gols INT NOT NULL,
    assistencias INT NOT NULL,
    valor_milhoes DECIMAL(8,2) NOT NULL
);

INSERT INTO jogadores
    (nome_responsavel, clube, atleta, gols, assistencias, valor_milhoes)
VALUES
    ('Thiago',  'Sport',     'Patrick de Paula', 3,  2,  2.50),
    ('Eduardo', 'Palmeiras', 'Flaco Lopez',      23, 11, 30.00),
    ('Joao',    'Santos',    'Neymar Jr',         10, 8,  8.00),
    ('Lucas',   'Flamengo',  'Arrascaeta',        10, 5, 14.00),
    ('Miotti',  'Paysandu',  'Cristiano Ronaldo', 25, 6,  10.00);
    
    
-- 1a.
select count(*) from jogadores;
-- 1b.
select distinct clube from jogadores;
-- 2a.
select MAX(gols) from jogadores;

-- ativ em grupo
SELECT
    SUM(valor_milhoes) AS valor_total_elenco,
    MAX(valor_milhoes) AS maior_valor_mercado,
    AVG(valor_milhoes) AS valor_medio_jogadores
FROM jogadores;
-- 2b.
select MIN(assistencias) from jogadores;
-- 3a.
select SUM(valor_milhoes) from jogadores;
-- 3b.
select avg(valor_milhoes) from jogadores;
-- 3c. valor total: soma de todos os valores, valor medio: media do valor total
-- 4a. acima da média
-- 4b. não, precisa de mais informações para determinar
