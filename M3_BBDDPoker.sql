DROP DATABASE IF EXISTS M3_BBDDPoker;

CREATE DATABASE M3_BBDDPoker;



USE M3_BBDDPoker;



CREATE TABLE jugadores(

id_jugador VARCHAR(100) PRIMARY KEY NOT NULL,
contra VARCHAR(100) NOT NULL,
dni VARCHAR(100) NOT NULL,
nombre TEXT NOT NULL,
edad INT NOT NULL
)ENGINE=InnoDB;



CREATE TABLE informacion(
fichas integer NOT NULL,
fichas0 integer NOT NULL,
partidasJugadas integer NOT NULL,
wins integer NOT NULL,
idJ VARCHAR(100) NOT NULL,
FOREIGN KEY (idJ) REFERENCES jugadores(id_jugador)
)ENGINE=InnoDB;



CREATE TABLE partidas(
id_partida varchar(100) PRIMARY KEY NOT NULL,
numjugadas integer NOT NULL,
maxjugadores integer NOT NULL,
duracion float NOT NULL,
bet0 integer NOT NULL,
fecha varchar(100) NOT NULL
)ENGINE=InnoDB;



CREATE TABLE participantes(
idJ varchar(100) NOT NULL,
idP varchar(100) NOT NULL,
winner TEXT NOT NULL,
FOREIGN KEY (idP) REFERENCES partidas(id_partida),
FOREIGN KEY (idJ) REFERENCES jugadores(id_jugador)
)ENGINE=InnoDB;



INSERT INTO jugadores VALUES ('J1','a','21200212L','gery',19);
INSERT INTO jugadores VALUES ('J2','a','56839759G','jose',19);
INSERT INTO jugadores VALUES ('J3','a','47439285B','merce',20);


INSERT INTO informacion VALUES (10000, 10000, 200, 100,'J1');
INSERT INTO informacion VALUES (8000, 8000, 300, 10,'J2');
INSERT INTO informacion VALUES (8000, 8000, 90, 5,'J3');


INSERT INTO partidas VALUES('P1',25,3,30,100,'26/02/2025');
INSERT INTO partidas VALUES('P2',40,2,25,150,'27/02/2025');
INSERT INTO partidas VALUES('P3',20,2,15,50,'28/02/2025');


INSERT INTO participantes VALUES ('J1','P1','gery');
INSERT INTO participantes VALUES ('J2','P1','merce');
INSERT INTO participantes VALUES ('J3','P1','jose');
