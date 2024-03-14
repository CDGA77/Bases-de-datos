CREATE TABLE Marcas (
    id INT PRIMARY KEY AUTO_INCREMENT, Marca VARCHAR(45)
);

INSERT INTO Marcas (Marca) VALUES ("BMW"), ("Audi");

SELECT * FROM Marcas;

CREATE TABLE Tipos_vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT, Tipo_vehiculo VARCHAR(50), marcas_id INT
);

INSERT INTO
    Tipos_vehiculos (Tipo_vehiculo, marcas_id)
VALUES ("carro", 2),
    ("camioneta", 1);

SELECT * FROM Tipos_vehiculos

CREATE TABLE Colores (
    id INT PRIMARY KEY AUTO_INCREMENT, color VARCHAR(45)
);

INSERT INTO Colores (color) VALUES ("Rojo"), ("azul");

SELECT * FROM Colores

CREATE TABLE Vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT, modelo VARCHAR(45), placa VARCHAR(45), color_id INT, tipo_vehiculo_id INT
);

INSERT INTO
    Vehiculos (modelo, placa)
VALUES ("2011", "pdd-771"),
    ("1999", "xtz-123"),
    ("2014", "vvr-456"),
    ("2006", "fgh-951"),
    ("2021", "cvz-789"),
    ("2024", "scs-058"),
    ("1994", "xjk-365"),
    ("2000", "wee-634"),
    ("2020", "ade-156");

SELECT * FROM Vehiculos

ALTER TABLE Vehiculos
ADD FOREIGN KEY (color_id) REFERENCES Colores (id);

ALTER TABLE Tipos_vehiculos
ADD FOREIGN key (marcas_id) REFERENCES Marcas (id);

ALTER TABLE Vehiculos
ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES Tipos_vehiculos (id)

SELECT Vehiculos.modelo, Vehiculos.placa, Marcas.Marca, Colores.color, Tipos_vehiculos.Tipo_vehiculo
FROM
    Vehiculos
    INNER JOIN Colores
    INNER JOIN Tipos_vehiculos
    INNER JOIN Marcas
WHERE
    Vehiculos.color_id = Colores.id
    AND Vehiculos.id = Tipos_vehiculos.id