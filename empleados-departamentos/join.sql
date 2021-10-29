show tables;
/*INNER JOIN*/
select * from departamentos
inner join empleados ON departamentos.id = empleados.DepartamentoId;
/*INNER JOIN CON alias*/
select * from departamentos d
inner join empleados e ON d.id = e.DepartamentoId;
/*INNER JOIN CON alias y renombramiento de columnas*/
select Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
inner join empleados e ON d.id = e.DepartamentoId;
/*LEFT JOIN CON alias y renombramiento de columnas*/
select Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
left join empleados e ON d.id = e.DepartamentoId;
/*RIGHT JOIN CON alias y renombramiento de columnas*/
select Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
right join empleados e ON d.id = e.DepartamentoId;
/*FULL JOIN CON alias y renombramiento de columnas*/
select Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
join empleados e ON d.id = e.DepartamentoId;
/*LEFT JOIN UNION RIGHT JOIN*/
SELECT Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
left join empleados e ON d.id = e.DepartamentoId
UNION
select Id, e.Nombre, d.Nombre as "Nombre de departamento" from departamentos d
right join empleados e ON d.id = e.DepartamentoId;

use testjoin;
select d.Id, d.Nombre, COUNT(d.nombre) as Total from departamentos d
inner join empleados e on d.id = e.DepartamentoId group by d.nombre;