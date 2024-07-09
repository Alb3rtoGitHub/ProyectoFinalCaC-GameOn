CREATE DATABASE gameon;
USE gameon;
CREATE TABLE registroUsuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    pais varchar(20) NOT NULL
);

CREATE TABLE login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50),
    contrasena VARCHAR(50)
);

INSERT INTO login (email, contrasena) VALUES ('admin@prueba.com', 'admin'), ('alberto@prueba.com', 'admin');

INSERT INTO registroUsuarios (nombre, apellido, email, password, fechaNacimiento, pais)
VALUES
('Juan', 'Perez', 'juan.perez@example.com', 'pass1', '1985-05-15', 'Argentina'),
('Maria', 'Gomez', 'maria.gomez@example.com', 'pass2', '1990-08-20', 'Bolivia'),
('Carlos', 'Silva', 'carlos.silva@example.com', 'pass3', '1982-12-01', 'Brasil'),
('Ana', 'Fernandez', 'ana.fernandez@example.com', 'pass4', '1995-07-07', 'Chile'),
('Luis', 'Martinez', 'luis.martinez@example.com', 'pass5', '1978-03-30', 'Colombia');
