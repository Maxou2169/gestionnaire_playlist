CREATE TABLE Version(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   dureeV DOUBLE,
   dateV DATE,
   idC INT NOT NULL,
   PRIMARY KEY(numeroV, nomfichier),
   FOREIGN KEY(idC) REFERENCES Chanson(idC)
);
