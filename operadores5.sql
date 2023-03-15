--Elimine "articulos", si existe:--
 if object_id('articulos') is not null
  drop table articulos;

--Cree la tabla, con la siguiente estructura:--
 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 go

--Vea la estructura de la tabla (sp_columns).--
exec sp_columns articulos;

--Ingrese algunos registros:--
 insert into articulos values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos values (3,'monitor','Samsung 14',800,10);
 insert into articulos values (4,'teclado','ingles Biswal',100,50);
 insert into articulos values (5,'teclado','español Biswal',90,50);

--Seleccione los datos de las impresoras (2 registros)
select * 
	from articulos
		where nombre = 'impresora';

--Seleccione los artículos cuyo precio sea mayor o igual a 400 (3 registros)
select *
	from articulos
		where precio >= 400;

--Seleccione el código y nombre de los artículos cuya cantidad sea menor a 30 (2 registros)
select codigo, nombre
	from articulos 
		where cantidad < 30;

--Selecciones el nombre y descripción de los artículos que NO cuesten $100 (4 registros)
select nombre, descripcion
	from articulos
		where precio <> 100;

_____________________________________________________________________________________________________

if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);

 select * from peliculas
  where duracion<=90;

 select * from peliculas
  where actor<>'Tom Cruise';

 select titulo,actor,cantidad
  from peliculas
  where cantidad >2;
________________________________________________________________________________________________________
