CREATE TABLE Chanson(
   idC INT,
   titreC VARCHAR(50),
   dateC DATE,
   genre VARCHAR(50) NOT NULL,
   nomG VARCHAR(50),
   PRIMARY KEY(idC),
   FOREIGN KEY(genre) REFERENCES Genre(genre),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG)
);


CREATE TABLE Version(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   dureeV DOUBLE,
   dateV DATE,
   idC INT NOT NULL,
   PRIMARY KEY(numeroV, nomfichier),
   FOREIGN KEY(idC) REFERENCES Chanson(idC)
);
