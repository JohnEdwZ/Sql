/*Necesita almacenar los datos de sus amigos en una tabla. Los datos que guardará serán: apellido, 
nombre, domicilio y teléfono.
1- Elimine la tabla "agenda" si existe:
 if object_id('agenda') is not null
  drop table agenda;

2- Intente crear una tabla llamada "/agenda":
 create table /agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
aparece un mensaje de error porque usamos un caracter inválido ("/") para el nombre.

3- Cree una tabla llamada "agenda", debe tener los siguientes campos: apellido, varchar(30); nombre, 
varchar(20); domicilio, varchar (30) y telefono, varchar(11):
 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

4- Intente crearla nuevamente. Aparece mensaje de error.

5- Visualice las tablas existentes (exec sp_tables @table_owner='dbo').

6- Visualice la estructura de la tabla "agenda" (sp_columns).

7- Elimine la tabla.

8- Intente eliminar la tabla, sin controlar si existe. Debe aparecer un mensaje de error.*/

if object_id('agenda') is not null
  drop table agenda;

 create table /agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 drop table agenda;

 drop table agenda;

 /*Necesita almacenar información referente a los libros de su biblioteca personal. Los datos que 
guardará serán: título del libro, nombre del autor y nombre de la editorial.
1- Elimine la tabla "libros", si existe:
 if object_id('libros') is not null
  drop table libros;

2- Verifique que la tabla "libros" no existe en la base de datos activa (exec sp_tables @table_owner='dbo').

3- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo, varchar(20); 
autor, varchar(30) y editorial, varchar(15).

4- Intente crearla nuevamente. Aparece mensaje de error.

5- Visualice las tablas existentes.

6- Visualice la estructura de la tabla "libros".

7- Elimine la tabla.

8- Intente eliminar la tabla nuevamente.*/

if object_id('libros') is not null
  drop table libros;

 exec sp_tables @table_owner='dbo';

 create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns libros;

 drop table libros;

 drop table libros;

 _____________________________________________________________________________
