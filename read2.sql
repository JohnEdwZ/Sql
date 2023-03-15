/*Trabaje con la tabla "agenda" que almacena información de sus amigos.
1- Elimine la tabla "agenda", si existe:
 if object_id('agenda') is not null
  drop table agenda;

2- Cree una tabla llamada "agenda". Debe tener los siguientes campos: apellido (cadena de 30), 
nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11):

3- Visualice las tablas existentes para verificar la creación de "agenda" 
(exec sp_tables @table_owner='dbo').

4- Visualice la estructura de la tabla "agenda" (sp_columns).

5- Ingrese los siguientes registros:
 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

6- Seleccione todos los registros de la tabla:
 select * from agenda;

7- Elimine la tabla "agenda":
 drop table agenda;

8- Intente eliminar la tabla nuevamente (aparece un mensaje de error):
 drop table agenda;*/
 
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;

 drop table agenda;

 /*Trabaje con la tabla "libros" que almacena los datos de los libros de su propia biblioteca.
1- Elimine la tabla "libros", si existe:
 if object_id('libros') is not null
  drop table libros;

2- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo (cadena de 20), 
autor (cadena de 30) y editorial (cadena de 15).

3- Visualice las tablas existentes (exec sp_tables @table_owner='dbo').

4- Visualice la estructura de la tabla "libros" (sp_columns).

5- Ingrese los siguientes registros:
 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

6- Muestre todos los registros (select).*/

 if object_id('libros') is not null
  drop table libros;

 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

 select * from libros;
_______________________________________________________________________________
/*Un videoclub que alquila películas en video almacena la información de sus películas en una tabla 
llamada "peliculas"; para cada película necesita los siguientes datos:
 -nombre, cadena de caracteres de 20 de longitud,
 -actor, cadena de caracteres de 20 de longitud,
 -duración, valor numérico entero.
 -cantidad de copias: valor entero.

1- Elimine la tabla, si existe:
 if object_id('peliculas')is not null
  drop table peliculas;

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
 create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

3- Vea la estructura de la tabla:

4- Ingrese los siguientes registros:
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

5- Muestre todos los registros.*/

if object_id('peliculas')is not null
  drop table peliculas;

 create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select * from peliculas;
_________________________________________________________________________________
 /*Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en 
una tabla llamada "peliculas".

1- Elimine la tabla, si existe:
 if object_id('peliculas') is not null
  drop table peliculas;

2- Cree la tabla:
 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

3- Vea la estructura de la tabla (sp_columns).
4- Ingrese alos siguientes registros:
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);
5- Realice un "select" mostrando solamente el título y actor de todas las películas
6- Muestre el título y duración de todas las peliculas
7- Muestre el título y la cantidad de copias*/

 if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select titulo,actor from peliculas;

 select titulo,duracion from peliculas;

 select titulo,cantidad from peliculas;

 /*Una empresa almacena los datos de sus empleados en una tabla llamada "empleados".

1- Elimine la tabla, si existe:
 if object_id('empleados') is not null
  drop table empleados;

2- Cree la tabla:
 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

3- Vea la estructura de la tabla:
 exec sp_columns empleados;

4- Ingrese algunos registros:
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

5- Muestre todos los datos de los empleados

6- Muestre el nombre, documento y domicilio de los empleados

7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados*/

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

 exec sp_columns empleados;

 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

 select * from empleados;

 select nombre,documento,domicilio from empleados;

 select documento,sexo,sueldobasico from empleados;

 _____________________________________________________________________________
 --Elimine la tabla si existe--
if object_id('libros') is not null
	drop table libros;

--Cree la tabla "libros". Debe tener la siguiente estructura:--
 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15),
  precio float,
  cantidad integer
  );

  go

--Visualice la estructura de la tabla "libros"--
exec sp_columns libros;

-- Ingrese los siguientes registros:--
 insert into libros (titulo,autor,editorial, precio, cantidad)
  values ('El aleph','Borges','Planeta',32.453, 32);
insert into libros (titulo,autor,editorial, precio, cantidad)
  values ('Martin Fierro','Jose Hernandez','Emece', 234.500, 354);
insert into libros (titulo,autor,editorial, precio, cantidad)
  values ('Aprenda PHP','Mario Molina','Emece', 34.545, 54);
--recuperar todos los datos de la tabla "libros"--
select * from libros;

--titulo, autor, editorial de la tabla "libros"--
select titulo, autor, editorial from libros;

--titulo y precio--
select titulo, precio from libros;

--editorial y cantidad--
select editorial, cantidad from libros;

_____________________________________________________________________________
--Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.--
--Elimine "agenda", si existe-
 if object_id('agenda') is not null
  drop table agenda;

--Cree la tabla, con los siguientes campos: --
create table agenda(
	apellido varchar (30), 
	nombre varchar (20), 
	domicilio varchar (30),
	telefono varchar(11)
);

go

--Visualice la estructura de la tabla "agenda".--
exec sp_columns agenda;

--Ingrese los siguientes registros:--
insert into agenda(apellido, nombre, domicilio,telefono)
 values ('Acosta', 'Ana', 'Colon 123', '4234567');
 insert into agenda(apellido, nombre, domicilio,telefono)
 values ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
 insert into agenda(apellido, nombre, domicilio,telefono)
 values ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido, nombre, domicilio,telefono)
 values ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido, nombre, domicilio,telefono)
 values ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

--Seleccione todos los registros de la tabla--
select * 
	from agenda;

--Seleccione el registro cuyo nombre sea "Marisa" (1 registro)--
select *
	from agenda 
		where nombre = 'Marisa';

--Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)--
select nombre, domicilio 
	from agenda 
		where apellido = 'Lopez'

--Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)--
select nombre 
	from agenda 
		where telefono = '4545454'