--Trabaje con la tabla "agenda" que registra la información referente a sus amigos.--

if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

--Ingrese los siguientes registros (insert into):--
insert into agenda values ('alvarez','Alberto','Colon 123','4234567');
insert into agenda values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda values ('Salas','Susana','Gral. Paz 1234','4123456');

SELECT * FROM agenda;

--Elimine el registro cuyo nombre sea "Juan" (1 registro afectado)
delete from agenda where nombre = 'Juan';
		
SELECT * FROM agenda;

--Elimine los registros cuyo número telefónico sea igual a "4545454" (2 registros afectados):
DELETE FROM agenda WHERE telefono = '4545454';

-- Muestre la tabla.
select * from agenda

--Elimine todos los registros (2 registros afectados):
delete from agenda;

-- Muestre la tabla.
select * from agenda;
