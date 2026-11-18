CREATE DATABASE Cross_join;
USE Cross_join;
CREATE TABLE alunos (id INT, nome VARCHAR(30));
INSERT INTO alunos VALUES (1, 'Ana'), (2, 'Bruno');
CREATE TABLE cursos (id INT, curso VARCHAR(30));
INSERT INTO cursos VALUES (1, 'SQL'), (2, 'Excel');
CREATE TABLE turnos (id INT, turno VARCHAR(30));
INSERT INTO turnos VALUES (1, 'Manha'), (2, 'Noite');

-- 1. Ele multiplica as tabelas, por exemplo, se uma tabela
-- tiver 2 registros e a outra 3, vai sair no resultado 6 linhas

-- 2. Não é necessario, o cross join funciona sem ele mesmo e sem o On

-- 3. 6 linhas

-- 4.
select nome, curso from alunos cross join cursos;

-- 5.
SELECT alunos.nome, turnos.turno
FROM alunos CROSS JOIN turnos;
-- retorna 4 linhas, pq ele pega os alunos e os turnos deles.
