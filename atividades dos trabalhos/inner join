use cinema;

-- ativ 1
select ator.NomeArtistico, personagem.Personagem
from ator inner join personagem on ator.CodAtor = personagem.CodAtor
where ator.NomeReal = 'Maria da Silva';

-- ativ2
select ator.CodAtor, filme.CodFilme, filme.NomeFilme ,personagem.Personagem
from filme inner join personagem on filme.CodFilme = personagem.CodFilme 
inner join ator on ator.CodAtor = personagem.CodAtor
where ator.NomeArtistico = 'Jim Carrey';

-- ativ 3
use clinica1;

select paciente.nomePac, medico.nomeMed, consulta.datas
from consulta inner join paciente on consulta.codPac = paciente.codPac
inner join medico on consulta.codMed = medico.codMed
where consulta.datas >= '2025-04-01' and consulta.datas < '2025-05-01';
