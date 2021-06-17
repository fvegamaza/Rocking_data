--First one
select JUGADORES.nombre, valor,EQUIPOS.nombre
from jugadores
inner join EQUIPOS
on JUGADORES.id_equipo = EQUIPOS.id_equipo;

--Second
select valor,EQUIPOS.nombre
from jugadores
inner join EQUIPOS
on JUGADORES.id_equipo = EQUIPOS.id_equipo
group by EQUIPOS.nombre
order by valor desc
limit 1;

--third

select JUGADORES.nombre,JUGADORES.apellido,valor,EQUIPOS.nombre
from jugadores
inner join EQUIPOS
on JUGADORES.id_equipo = EQUIPOS.id_equipo
order by valor desc
limit 1
-- Hay que traer tanto el nombre como el apellido porque si filtras solo por apellido al tener null
-- no aparece primero el correcto

-- FOUR


UPDATE JUGADORES
SET posicion = REPLACE(posicion,"MC","MED");
