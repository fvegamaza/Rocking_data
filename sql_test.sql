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


-- FIVE
SELECT valor,anio,nombre,apellido
FROM JUGADORES
where anio = 2020
order by valor
limit 1

-- SIX
SELECT AVG(valor),anio
FROM JUGADORES
GROUP BY anio
ORDER BY anio

-- SEVEN

SELECT VALOR,POSICION FROM JUGADORES
ORDER BY VALOR DESC
limit 1;

--EIGHT

SELECT DISTINCT POSICION, COUNT(ID_EQUIPO) AS Cantidad_Jugadores
FROM JUGADORES
GROUP BY POSICION
order by Cantidad_Jugadores desc

--nine
SELECT count(JUGADORES.id_equipo) as cantidad_jugadores ,EQUIPOS.Nombre
from jugadores
inner join EQUIPOS
  on EQUIPOS.id_equipo = JUGADORES.id_equipo
group by EQUIPOS.Nombre
order by cantidad_jugadores desc
limit 2

-- Preguntas conceptuales 
-- 11
-- Para ocultar el valor le daria este query:

select JUGADORES.nombre,JUGADORES.apellido,EQUIPOS.nombre
from jugadores
inner join EQUIPOS
on JUGADORES.id_equipo = EQUIPOS.id_equipo
order by valor desc

-- Le diria que esta ordenado de mayor a menor en valor

-- 12
--Agregaria una columna primary key para identificar cada observacion
-- Haria lo siguiente segun cada columna:
-- Nombre y apellido: No deberia haber null, podriamos al actualizar la bases de datos hacer este
-- campo NOT NULL imposibilitando que vuelva a suceder
-- Valor: No puede tener valores negativos , o bien reemplazamos el "-" y asumimos
-- que todo valor negativos es un error humanos, o solo deja insertar valores positivos y 0


--13