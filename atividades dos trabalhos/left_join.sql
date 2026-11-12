-- 1°
-- O left join retorna todas as linhas da tabela da esquerda e apenas as linhas correspondentes da tabela da direita,
-- qnd n tem nada na tabela da direita, o BD retorna nulo

-- 2°
-- preservar a integridade dos dados da tabela principal sem perder registros que ainda não possuem vínculos

-- 3°
select * from cliente;

-- 4°
select cliente.nome, loja.valor from cliente left join loja
on cliente.id_cliente = loja.id_cliente order by loja.valor ASC;

-- 5°
select cliente.id_cliente, cliente.nome from cliente left join loja on cliente.id_cliente
order by cliente.nome asc;

-- 6°
select cliente.nome, loja.nome as nome_loja, loja.valor
from cliente left join loja on cliente.id_cliente = loja.id_cliente
order by loja.valor desc limit 1;

-- 7°
select cliente.id_cliente, cliente.nome, cliente.idade, loja.valor
from cliente left join loja on cliente.id_cliente = loja.id_cliente
order by cliente.idade desc;

-- 8°
-- Inner Join: Retorna apenas os registros que têm correspondência em ambas as tabelas, se nao tiver relação é descartado
-- Left Join:  Retorna todos os registros da tabela da esquerda, independentemente de ter ou não correspondência na tabela da direita,
-- se não tiver correspondencia retorna nulo
