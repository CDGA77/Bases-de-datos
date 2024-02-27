-- Creación de la tabla Estudiantes
CREATE TABLE Estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT, nombres VARCHAR(45), apellidos VARCHAR(45), fecha_nacimiento DATE
);

-- Insertar datos de prueba
INSERT INTO
    Estudiantes (
        nombres, apellidos, fecha_nacimiento
    )
VALUES ('Juan', 'Pérez', '2000-05-24'),
    (
        'Maria', 'López', '1999-02-15'
    ),
    (
        "Pedro", 'Gonzalez', '1998-03-07'
    ),
    (
        "Daniel", "Gaviria", "2001-05-21"
    )

SELECT * FROM Estudiantes;
-- Creación de la tabla Materias
CREATE TABLE Materias (
    id INT PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(50), descripcion TEXT
);

INSERT INTO
    Materias (nombre, descripcion)
VALUES (
        'Matemáticas', 'Matemáticas básicas'
    ),
    ('Física', 'Física básica'),
    (
        'Química', 'Introducción a la química'
    )

SELECT * FROM Materias;

-- Creación de la tabla Notas
-- con llaves foráneas a Estudiantes y Materias
CREATE TABLE Notas (
    id INT PRIMARY KEY AUTO_INCREMENT, idestudiante INT, idmateria INT, nota DECIMAL, FOREIGN KEY (idestudiante) REFERENCES Estudiantes (id,), FOREIGN KEY (idmateria) REFERENCES Materias (id)
);

INSERT INTO
    Notas (idestudiante, idmateria, nota)
VALUES (1, 1, 14.5),
    (1, 2, 16.2),
    (1, 3, 18),
    (2, 1, 14.8),
    (2, 2, 16.5),
    (2, 3, 15.5),
    (2, 3, 11.8)

SELECT * FROM Notas;