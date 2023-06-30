#script de la base de datos proyecto medio ciclo
#Programacion Avanzada

CREATE DATABASE proyecto_pa;

USE proyecto_pa;

CREATE TABLE IF NOT EXISTS cliente(
	id int NOT NULL AUTO_INCREMENT,
	cedula varchar(10),
	nombre varchar(255),
	apellido varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS pelicula(
	id int NOT NULL AUTO_INCREMENT,
	nombre varchar(255),
	duracion int,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS rating(
	id_rating int NOT NULL AUTO_INCREMENT,
	idpelicula int ,
	calificaciones int,
  	PRIMARY KEY (id_rating),
  	FOREIGN KEY idpelicula (idpelicula) REFERENCES pelicula(id)
);


