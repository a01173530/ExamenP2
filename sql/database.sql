DROP DATABASE IF EXISTS exp2;
CREATE DATABASE exp2;
USE exp2;


CREATE TABLE Incidente
(
	incidenteId int NOT NULL UNIQUE AUTO_INCREMENT,
	lugarincidenteId int NOT NULL,
	tipoincidenteId int NOT NULL,
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (incidenteId,lugarincidenteId,tipoincidenteId)
	FOREIGN KEY (lugarincidenteId) REFERENCES lugar_incidente (lugarincidenteId) ON DELETE CASCADE,
	FOREIGN KEY (tipoincidenteId) REFERENCES tipo_incidente (tipoincidenteId) ON DELETE CASCADE
);

CREATE TABLE tipo_incidente
(
	tipoincidenteId int NOT NULL UNIQUE AUTO_INCREMENT,
	tipoincidente varchar(26) NOT NULL,
	PRIMARY KEY (tipoincidenteId)
);


CREATE TABLE lugar_incidente
(
	lugarincidenteId int NOT NULL UNIQUE AUTO_INCREMENT,
	lugarIncidente varchar(26) NOT NULL,
	PRIMARY KEY (lugarincidenteId)
);









