/*Trabaje con la tabla "agenda" que almacena los datos de sus amigos.

1- Elimine la tabla si existe:
 if object_id('agenda') is not null
  drop table agenda;

2- Cree la tabla:
 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

3- Ingrese los siguientes registros (1 registro actualizado):
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

4- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectado)

5- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" 
(2 registros afectados)

6- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" (ningún 
registro afectado porque ninguno cumple con la condición del "where")

7 - Luego de cada actualización ejecute un select que muestre todos los registros de la tabla.*/

if object_id('agenda') is not null
  drop table agenda;

create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
 go;

 insert into agenda values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda values ('Suarez','Susana','Gral. Paz 1234','4123456');

select * from agenda;

 update agenda set nombre = 'Juan jose'
    where nombre = 'juan';

select * from agenda;

update agenda set telefono = '4545454'
    where telefono = '4445566' 

select * from agenda;

update agenda set nombre = 'Juan Jose'
    where nombre = 'Juan'

select * from agenda;
--______________________________________________________________________________________________________--
/*Trabaje con la tabla "libros" de una librería.

1- Elimine la tabla si existe:

2- Créela con los siguientes campos: titulo (cadena de 30 caracteres de longitud), autor (cadena de 
20), editorial (cadena de 15) y precio (float):

3- Ingrese los siguientes registros:
 insert into libros (titulo, autor, editorial, precio)
  values ('El aleph','Borges','Emece',25.00);
 insert into libros (titulo, autor, editorial, precio)
  values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros (titulo, autor, editorial, precio)
  values ('Matematica estas ahi','Paenza','Siglo XXI',15);

4- Muestre todos los registros (5 registros):

5- Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (1 registro 
afectado)

6- Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (ningún 
registro afectado porque ninguno cumple la condición)

7- Actualice el precio del libro de "Mario Molina" a 27 pesos (1 registro afectado):

8- Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya 
editorial sea igual a "Emece" (3 registros afectados):

9 - Luego de cada actualización ejecute un select que mustre todos los registros de la tabla.*/

if object_id('libros') is not null
  drop table libros;

 create table libros (
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );

 insert into libros values ('El aleph','Borges','Emece',25.00);
 insert into libros values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from libros;

update libros set autor='Adrian Paenza'
  where autor='Paenza';

select * from libros;

update libros set autor='Adrian Paenza'
  where autor='Paenza';

select * from libros;

 update libros set precio=27
 where autor='Mario Molina';

select * from libros;

 update libros set editorial='Emece S.A.'
  where editorial='Emece';

select * from libros;