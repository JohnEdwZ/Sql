# SQL
### Aprendiendo Sql

**_CREAR UNA BASE DE DATOS_**  
create database biblioteca;

***


**_Create Read Update Delete: CRUD_**
| **_CREAR_**                | **_LEER_**            | **_ACTUALIZAR_** | **_ELIMINAR_**           |
| -------------------------- | --------------------- | ---------------- | ------------------------ |
| create table libros(     - | select * from libros;-| -              - | drop database if exist   |
| nombre_libro varchar(80),- | -                   - | -              - | biblioteca;            - |
| autor_libro varchar(40)  - | -                   - | -              - | delete from libros     - |
| )                        - | -                   - | -              - | -                      - | 



***

**_VER ESTRUCTURA DE UNA TABLA_**   
exec sp_columns libros;

```
LOTE DE COMANDOS SQL
if OBJECT_ID ('libros') is not null
	drop table libros;

create table libros(
	nombre_libro varchar(80),
	autor_libro varchar(40),
	editorial_libro varchar(30),
);

create table autor(
	nombre varchar(10),
	apellido varchar(5),
  edad integer
);

exec sp_tables @table_owner = 'dbo';
exec sp_columns libros;
drop table libros;
exec sp_tables @table_owner = 'dbo';
```

**_INSERTAR DATOS EN UNA TABLA_**  
insert into libros(nombre_libro, autor_libro) 
			values('adfg', '1234567890');

**_VER TODOS LOS DATOS DE UNA TABLA_**   
select * from libros;

**_TIPOS DE DATOS BÁSICOS EN SQL_**  
```
create table libros(  
	nombre_libro varchar(80),  
	autor_libro varchar(40),  
	editorial_libro varchar(30),  
	edicion_libro varchar(20),  
	publicacion_libro varchar(40),  
	numero_paginas_libro integer,  
	volumen_libro varchar(9),  
	resumen_libro varchar(255),  
	ano_libro integer,  
	precio_libro float,  
	cantidad_libros_biblioteca integer  
);  
```
