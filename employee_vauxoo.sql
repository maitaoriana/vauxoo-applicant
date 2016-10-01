-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
	id serial PRIMARY KEY, 
	name VARCHAR (50) NOT NULL,
    description VARCHAR (200)
);

CREATE TABLE employee
(
  id serial PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  id_department serial NOT NULL,
  CONSTRAINT employee_id_department_fkey FOREIGN KEY (id_department)
      REFERENCES employee_department (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO employee_department(name, description)
    VALUES ('Computacion','Computacion');

INSERT INTO employee_department(name, description)
    VALUES ('Recursos Humanos','Recursos Humanos');

INSERT INTO employee_department(name, description)
    VALUES ('Produccion','Produccion');

INSERT INTO employee_department(name, description)
    VALUES ('Gestion de Calidad','Gestion de Calidad');

INSERT INTO employee_department(name)
    VALUES ('Analisis de Riesgo');

INSERT INTO employee_department(name, description)
    VALUES ('Gestion de Calidad','Gestion de Calidad');

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Oriana','Maita',1);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Andrea','Maita',2);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Miguel','Maita',3);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Alejandro','Maita',4);

--CREATE TABLE employee_hobby (
--);

-- ...
