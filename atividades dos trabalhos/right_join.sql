  -- 1°
use f1_campeonato_avancado;

select p.nome as piloto, coalesce(r.pontos, 0) as pontos
from pilotos p left join resultados_corrida r on p.id = r.piloto_id and r.gp = 'GP de Interlagos';

-- 2°
select fm.nome as fabricante, COUNT(p.id) as quantidade_pilotos
from equipes e right join fabricantes_motor fm on e.motor_id = fm.id
left join pilotos p on e.id = p.equipe_id group by fm.id, fm.nome
order by quantidade_pilotos desc;

-- 3°
select e.id, e.nome, e.motor_id from fabricantes_motor fm
right join equipes e on fm.id = e.motor_id
where fm.id is null;

-- 4°
select fm.nome as fabricante, e.nome as equipe, p.nome as piloto
from fabricantes_motor fm
right join equipes e on fm.id = e.motor_id
right join pilotos p on e.id = p.equipe_id;

select p.nome as piloto, r.gp, r.pontos
from resultados_corrida r
right join pilotos p on r.piloto_id = p.id
where r.gp = 'GP de Interlagos';

select e.nome as equipe
from pilotos p
right join equipes e on e.id = p.equipe_id
where p.id is null;
