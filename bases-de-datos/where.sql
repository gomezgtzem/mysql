-- Seleccionar por id
select * from actor where actor_id=5;
/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/
select * from actor where actor_id>5;
-- Select con datos especificos
SELECT actor_id, frist_name, last_name FROM actor WHERE actor_id >63;
-- cambiar orden en que se piden los datos 
SELECT last_name, first_name, actor_id FROM actor WHERE actor_id >63;
-- rename
SELECT last_name as apellido, first_name as nombre, actor_id as id FROM actor WHERE actor_id >63;
-- operacion modulo %
SELECT last_name, first_name, actor_id FROM actor WHERE actor_id % 2 = 0;
/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/

-- operador and
select * from actor WHERE first_name="CHRIS" and actor_id > 50;
/*
COMODINES:
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/
-- terminan con a
select * from actor WHERE first_name LIKE '%A';
-- empiezan con a
select * from actor WHERE first_name LIKE 'A%';
-- trae a los que contengan a
select * from actor WHERE first_name LIKE '%A%';
-- COUNT, nos cuenta una columna
SELECT  COUNT(film_id) as Contador FROM film WHERE rental_duration=3;
SELECT  rental_duration, COUNT(film_id) as Total FROM film WHERE rental_duration=7;

-- AGRUPAR consultas
select rental_duration, COUNT(film_id) as Total FROM film group by rental_duration;
-- promedio
select avg(replacement_cost) as "Costo Promedio" from film;
-- suma
select sum(replacement_cost) as "costo total del inventario" from film;
-- maximo
select *, max(replacement_cost) as "costo maximo" from film;
-- minimo
select *, min(replacement_cost) as "costo minimo" from film;
-- ordenar elementos
select * from film order by replacement_cost desc limit 1;