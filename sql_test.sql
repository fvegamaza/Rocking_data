--First one
select JUGADORES.nombre, valor,EQUIPOS.nombre
from jugadores
inner join EQUIPOS
on JUGADORES.id_equipo = EQUIPOS.id_equipo


