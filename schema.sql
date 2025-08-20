-- Creación de la base de datos (opcional, si no existe)
CREATE DATABASE IF NOT EXISTS universidad;
USE universidad;

-- Creación de la tabla ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

-- Creación de la tabla CURSO
CREATE TABLE CURSO (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INT NOT NULL
);

-- Creación de la tabla PROFESOR
CREATE TABLE PROFESOR (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_profesor VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

-- Creación de la tabla INSCRIPCION
CREATE TABLE INSCRIPCION (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Creación de la tabla ENSEÑA
CREATE TABLE ENSEÑA (
    id_enseña INT AUTO_INCREMENT PRIMARY KEY,
    id_profesor INT NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Inserción de datos en la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2000-05-10'),
('María', 'González', '2001-02-20'),
('Carlos', 'López', '1999-11-15');

-- Inserción de datos en la tabla CURSO
INSERT INTO CURSO (nombre_curso, creditos) VALUES
('Introducción a la programación', 4),
('Cálculo I', 5),
('Física General', 4);

-- Inserción de datos en la tabla PROFESOR
INSERT INTO PROFESOR (nombre_profesor, departamento) VALUES
('Ana Rodríguez', 'Ciencias de la Computación'),
('Luis Sánchez', 'Matemáticas'),
('Sofía Martínez', 'Física');

-- Inserción de datos en la tabla INSCRIPCION
INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');

-- Inserción de datos en la tabla ENSEÑA
INSERT INTO ENSEÑA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);
