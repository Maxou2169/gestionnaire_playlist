CREATE TABLE Groupe(
   nomG VARCHAR(50),
   dateFormation DATE,
   PRIMARY KEY(nomG)
);

CREATE TABLE Musiciens(
   nomM VARCHAR(50),
   nomScene VARCHAR(50),
   prenomM VARCHAR(50),
   PRIMARY KEY(nomM, nomScene)
);

CREATE TABLE Chanson(
   idC INT,
   titreC VARCHAR(50),
   dateC DATE,
   nomG VARCHAR(50),
   PRIMARY KEY(idC),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG)
);

CREATE TABLE Version(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   dureeV DOUBLE,
   dateV DATE,
   PRIMARY KEY(numeroV, nomfichier)
);

CREATE TABLE Genre(
   genre VARCHAR(50),
   PRIMARY KEY(genre)
);

CREATE TABLE ListeDeLecture(
   idLecture INT,
   titreLecture VARCHAR(50),
   dateLecture DATE,
   PRIMARY KEY(idLecture)
);

CREATE TABLE Album(
   titreA VARCHAR(50),
   dateSortieA DATE,
   producteur VARCHAR(50),
   PRIMARY KEY(titreA)
);

CREATE TABLE AlbumStudio(
   titreA VARCHAR(50),
   nomIng VARCHAR(50) NOT NULL,
   PRIMARY KEY(titreA),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);

CREATE TABLE AlbumCompilation(
   titreA VARCHAR(50),
   descriptionAC VARCHAR(200),
   PRIMARY KEY(titreA),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);

CREATE TABLE AlbumConcert(
   titreA VARCHAR(50),
   descriptionAL VARCHAR(200),
   PRIMARY KEY(titreA),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);

CREATE TABLE Lieu(
   idLieu VARCHAR(50),
   nomLieu VARCHAR(50),
   LATITUDE DOUBLE,
   LONGITUDE DOUBLE,
   PRIMARY KEY(idLieu, nomLieu)
);

CREATE TABLE Propriétés(
   descriptionP VARCHAR(200),
   PRIMARY KEY(descriptionP)
);

CREATE TABLE Période(
   dateDebut DATE,
   dateFin DATE,
   PRIMARY KEY(dateDebut, dateFin)
);

CREATE TABLE DateSéparation(
   dateSéparation DATE,
   PRIMARY KEY(dateSéparation)
);

CREATE TABLE COMPOSER(
   nomG VARCHAR(50),
   nomM VARCHAR(50),
   nomScene VARCHAR(50),
   role VARCHAR(50),
   membref LOGICAL,
   PRIMARY KEY(nomG, nomM, nomScene),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG),
   FOREIGN KEY(nomM, nomScene) REFERENCES Musiciens(nomM, nomScene)
);

CREATE TABLE PRENDRE(
   idC INT,
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   forme VARCHAR(50),
   PRIMARY KEY(idC, numeroV, nomfichier),
   FOREIGN KEY(idC) REFERENCES Chanson(idC),
   FOREIGN KEY(numeroV, nomfichier) REFERENCES Version(numeroV, nomfichier)
);

CREATE TABLE LIER(
   idC INT,
   genre VARCHAR(50),
   PRIMARY KEY(idC, genre),
   FOREIGN KEY(idC) REFERENCES Chanson(idC),
   FOREIGN KEY(genre) REFERENCES Genre(genre)
);

CREATE TABLE INTERPRETER(
   nomG VARCHAR(50),
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   PRIMARY KEY(nomG, numeroV, nomfichier),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG),
   FOREIGN KEY(numeroV, nomfichier) REFERENCES Version(numeroV, nomfichier)
);

CREATE TABLE PRODUIRE(
   titreA VARCHAR(50),
   idL VARCHAR(50),
   nomL VARCHAR(50),
   PRIMARY KEY(titreA, idLieu, nomLieu),
   FOREIGN KEY(titreA) REFERENCES AlbumConcert(titreA),
   FOREIGN KEY(idLieu, nomLieu) REFERENCES Lieu(idLieu, nomLieu)
);

CREATE TABLE ENREGISTRER(
   idC INT,
   idL VARCHAR(50),
   nomL VARCHAR(50),
   PRIMARY KEY(idC, idLieu, nomLieu),
   FOREIGN KEY(idC) REFERENCES Chanson(idC),
   FOREIGN KEY(idLieu, nomLieu) REFERENCES Lieu(idLieu, nomLieu)
);

CREATE TABLE INVITER(
   nomM VARCHAR(50),
   nomScene VARCHAR(50),
   commentaire VARCHAR(200),
   nomG VARCHAR(50) NOT NULL,
   titreA VARCHAR(50) NOT NULL,
   PRIMARY KEY(nomM, nomScene),
   UNIQUE(nomG),
   FOREIGN KEY(nomM, nomScene) REFERENCES Musiciens(nomM, nomScene),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);

CREATE TABLE AVOIR_un_genre_parent(
   genre VARCHAR(50),
   parent VARCHAR(50),
   genre_1 VARCHAR(50) NOT NULL,
   PRIMARY KEY(genre),
   FOREIGN KEY(genre) REFERENCES Genre(genre),
   FOREIGN KEY(genre_1) REFERENCES Genre(genre)
);

CREATE TABLE ETRE_en_relation(
   idC INT,
   idC_1 INT,
   typeRelation VARCHAR(50),
   PRIMARY KEY(idC, idC_1),
   FOREIGN KEY(idC) REFERENCES Chanson(idC),
   FOREIGN KEY(idC_1) REFERENCES Chanson(idC)
);

CREATE TABLE POSSEDER(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   descriptionP VARCHAR(200),
   typePropriété VARCHAR(50),
   PRIMARY KEY(numeroV, nomfichier, descriptionP),
   FOREIGN KEY(numeroV, nomfichier) REFERENCES Version(numeroV, nomfichier),
   FOREIGN KEY(descriptionP) REFERENCES Propriétés(descriptionP)
);

CREATE TABLE INCLURE(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   idL INT,
   PRIMARY KEY(numeroV, nomfichier, idLecture),
   FOREIGN KEY(numeroV, nomfichier) REFERENCES Version(numeroV, nomfichier),
   FOREIGN KEY(idLecture) REFERENCES ListeDeLecture(idLecture)
);

CREATE TABLE CONTENIR(
   numeroV VARCHAR(50),
   nomfichier VARCHAR(50),
   titreA VARCHAR(50),
   numéroPiste DOUBLE,
   PRIMARY KEY(numeroV, nomfichier, titreA),
   FOREIGN KEY(numeroV, nomfichier) REFERENCES Version(numeroV, nomfichier),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);

CREATE TABLE ETRE_apparu(
   nomM VARCHAR(50),
   nomScene VARCHAR(50),
   dateDebut DATE,
   dateFin DATE,
   datePeriode DATE,
   PRIMARY KEY(nomM, nomScene, dateDebut, dateFin),
   FOREIGN KEY(nomM, nomScene) REFERENCES Musiciens(nomM, nomScene),
   FOREIGN KEY(dateDebut, dateFin) REFERENCES Période(dateDebut, dateFin)
);

CREATE TABLE COMPORTER(
   nomG VARCHAR(50),
   dateSéparation DATE,
   PRIMARY KEY(nomG, dateSéparation),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG),
   FOREIGN KEY(dateSéparation) REFERENCES DateSéparation(dateSéparation)
);

CREATE TABLE FAIRE(
   nomG VARCHAR(50),
   titreA VARCHAR(50),
   PRIMARY KEY(nomG, titreA),
   FOREIGN KEY(nomG) REFERENCES Groupe(nomG),
   FOREIGN KEY(titreA) REFERENCES Album(titreA)
);
