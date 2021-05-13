DROP DATABASE IF EXISTS exp2;
CREATE DATABASE exp2;
USE exp2;




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


CREATE TABLE Incidente
(
	incidenteId int NOT NULL UNIQUE AUTO_INCREMENT,
	lugarincidenteId int NOT NULL,
	tipoincidenteId int NOT NULL,
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (incidenteId,lugarincidenteId,tipoincidenteId),
	FOREIGN KEY (lugarincidenteId) REFERENCES lugar_incidente (lugarincidenteId) ON DELETE CASCADE,
	FOREIGN KEY (tipoincidenteId) REFERENCES tipo_incidente (tipoincidenteId) ON DELETE CASCADE
);

INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Centro turistico");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Laboratorios");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Restaurante");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Centro operativo");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Triceratops");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Dilofosaurios");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Velociraptors");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"TRex");
INSERT INTO `lugar_incidente`(`lugarincidenteId`,`lugarIncidente`) VALUES (NULL,"Planicie de los herbívoros");





INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Falla eléctrica");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Fuga de herbívoro");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Fuga de Velociraptors");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Fuga de TRex");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Robo de ADN");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Auto descompuesto");
INSERT INTO `tipo_incidente`(`tipoincidenteId`,`tipoincidente`) VALUES (NULL,"Visitantes en zona no autorizada");



