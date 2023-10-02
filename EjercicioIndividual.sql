DROP DATABASE IF EXISTS ProjectDemo
CREATE DATABASE ProjectDemo
USE ProjectDemo

--Format Editat, ESTA BÉ??
--LEGIR INSTRUCCIONS QUE HI HA ATENEA EJERCICIO INDIVIDUAL PER GUIARNOS
--Taula Propiedades Cadascú??


CREATE TABLE Jugadores (
    ID INTEGER PRIMARY KEY NOT NULL,
    LastScore INTEGER,
    BestScore INTEGER,
    GamesPlayed INTEGER
)

CREATE TABLE PersonalData (
    ID INTEGER PRIMARY KEY NOT NULL,
    Email TEXT,
    Name TEXT,
    Password TEXT
    FOREIGN KEY (ID) REFERENCES Jugadores(ID)
)

CREATE TABLE Game (
    IDGame INTEGER PRIMARY KEY NOT NULL,
    IDPlayer1 INTEGER,
    IDPlayer2 INTEGER,
    IDPlayer3 INTEGER,
    IDPlayer4 INTEGER,
    )
    FOREIGN KEY (IDPlayer1) REFERENCES (Jugadores(ID))
    FOREIGN KEY (IDPlayer2) REFERENCES (Jugadores(ID))
    FOREIGN KEY (IDPlayer3) REFERENCES (Jugadores(ID))
    FOREIGN KEY (IDPlayer4) REFERENCES (Jugadores(ID))

CREATE TABLE GameValues (
    IDGame INTEGER NOT NULL,
    IDPlayer INTEGER NOT NULL,
    LastPos INTEGER,
    Money INTEGER,
    Properties TEXT,
    FOREIGN KEY (IDGame) REFERENCES Game(IDGame),
    FOREIGN KEY (IDPlayer) REFERENCES Jugadores(ID)
)
--Insert Values
INSERT INTO Jugadores VALUES (1,5,4,2);
INSERT INTO Jugadores VALUES (2,3,5,2);
INSERT INTO Jugadores VALUES (3,4,7,8);
INSERT INTO Jugadores VALUES (4,1,9,6);

INSERT INTO PersonalData VALUES (1,'llff2003ae@gmail.com','Lluc','1234');
INSERT INTO PersonalData VALUES (2,'pepe174@gmail.com','Pepe','123334');
INSERT INTO PersonalData VALUES (3,'lauraaa@gmail.com','Laura','1266');
INSERT INTO PersonalData VALUES (4,'brr@gmail.com','BRR','6798');

INSERT INTO Game VALUES (1,1,2,3,4);

INSERT INTO GameValues VALUES (1,1,4,300,'ss')
INSERT INTO GameValues VALUES (1,2,8,100,'ss')
INSERT INTO GameValues VALUES (1,3,10,80,'ss')
INSERT INTO GameValues VALUES (1,4,2,500,'ss')


--SelectingQuerie SHA DE CANVIAR FORMAT
SELECT (GameValues.Money,GameValues.IDGame) FROM GameValues, Jugadores, PersonalData WHERE
PersonalData.Name='Juan' AND
PersonalData.ID=Jugadores.ID AND
GameValues.IDPlayer=Jugadores.ID;