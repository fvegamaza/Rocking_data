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


--13 Desde un txt/csv se puede cargar los datos masivamente. Hasta 2gb lo he hecho
-- Sé tambien que hay codigo de php que facilita la subida cuando lo archivos son inmensos
-- pero no tuve la oportunidad de probarlo
-- Desde python connectando la base tambien es posible cargarlo.
-- Es decir, leer el archivo con python e insertarlo en tablas con mysql


--14 La primary key es un error grave, estimo que seria la primera observación que haria
-- Columnas como dorsal,nombre,apellido,anio no pueden ser nulos
-- no comprendo porque la posicion es un char y no un varchar (mas teniendo en cuenta que
-- la mayoria de posiciones son dos silabas). La pondria varchar(255)
-- el id_equipo al ser la unica foreigh key deberia ser not null
-- No comprendo porque paises tiene un varchar de 10, afghanistan tiene 11 espacios no va 
-- ser posible agregarlo de necesitarlo. Cambiaria todo los varchar a Varchar(255) para evirtar
-- futuras complicaciones, de igual manera la memoria sera la misma.

--15 Windows