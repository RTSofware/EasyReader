USE easyreader;
DROP TABLE IF EXISTS noticia;
CREATE TABLE noticia (
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(127) NOT NULL,
enlace VARCHAR(255) NOT NULL,
descripcion TEXT(255),
fecha DATETIME,
idCanal INT,
PRIMARY KEY (id) USING BTREE,
FOREIGN KEY (idCanal) REFERENCES canal(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
