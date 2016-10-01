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

CREATE TABLE employee_hobby (
  id serial NOT NULL,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(200),
  CONSTRAINT employee_hobby_pkey PRIMARY KEY (id)
);

CREATE TABLE employee_has_hobby
(
  id_hobby serial NOT NULL,
  id_employee serial NOT NULL,
  CONSTRAINT employee_has_hobby_pkey PRIMARY KEY (id_hobby, id_employee),
  CONSTRAINT employee_has_hobby_id_employee_fkey FOREIGN KEY (id_employee)
      REFERENCES employee (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT employee_has_hobby_id_hobby_fkey FOREIGN KEY (id_hobby)
      REFERENCES employee_hobby (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO employee_hobby(name, description)
    VALUES ('Jugar Futbol','Jugar');

INSERT INTO employee_hobby(name)
    VALUES ('Cantar');

INSERT INTO employee_hobby(name)
    VALUES ('Pintar');

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (1, 3);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (1, 4);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (2, 4);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (3, 3);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (2, 1);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (3, 2);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (3, 1);

INSERT INTO employee_has_hobby(id_hobby, id_employee)
    VALUES (2, 2);


