-- Subconsultas
select * from film_category;
select * from film_category where category_id=4;
-- filtrar categorias por el filtro de categoria 4
select * from film where film_id in(1,2,3);
-- sub consulta que trae todas las peliculas de una categoria en especifico //para este ejemplo la categoria seria comedia
select * from film where film_id in(select film_id from film_category where category_id=5);
-- between
select * from film where film_id between 1 and 10