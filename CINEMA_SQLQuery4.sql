  CREATE TABLE SCENARISTE (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 DateNaissance Date,
	 CONSTRAINT Scenariste_PK PRIMARY KEY (ID),
	 )
 GO 

  CREATE TABLE PAYS (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 CONSTRAINT PAYS_PK PRIMARY KEY (ID),
	 )
 GO 
 
 CREATE TABLE REALISATEUR (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 DateNaissance Date ,
	 CONSTRAINT REALISATEURS_PK PRIMARY KEY (ID),
	 )
 GO 

  CREATE TABLE Producteur (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 DateNaissance Date,
	 CONSTRAINT Producteur_PK PRIMARY KEY (ID),
	  
	 )
 GO 

  CREATE TABLE GENRE (
     ID INT IDENTITY (1,1) NOT NULL,
     typeFilmSerie varchar(100) NOT NULL, 
	 CONSTRAINT GENRE_PK PRIMARY KEY (ID),
	 )
 GO 

 
 CREATE TABLE ACTEUR (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 DateNaissance varchar(100) NOT NULL,
	 CONSTRAINT ACTEURS_PK PRIMARY KEY (ID),
	 )
 GO 

  CREATE TABLE Utilisateur (
     ID INT IDENTITY (1,1) NOT NULL,
     Nom varchar(100) NOT NULL, 
	 Prenom varchar(100) NOT NULL,
	 email varchar(100) NOT NULL,
	 Mot_de_passe varchar(100) NOT NULL,
	 EtAdmin varchar(100) NOT NULL,
	 CONSTRAINT Utilisateur_PK PRIMARY KEY (ID),
	 
	 )
 GO 


 CREATE TABLE PRODUCTION (
     ID INT IDENTITY (1,1) NOT NULL,
     ID_Film INT IDENTITY (1,1) NOT NULL,
	 ID_Serie INT IDENTITY (1,1) NOT NULL,
	 ID_Realisateur INT IDENTITY (1,1) NOT NULL,
	 ID_Scenariste INT IDENTITY (1,1) NOT NULL,
	 ID_Producteur INT IDENTITY (1,1) NOT NULL,
	 ID_Genre INT IDENTITY (1,1) NOT NULL,
	 ID_Pays INT IDENTITY (1,1) NOT NULL,
     ImageAffiche varchar(100) NOT NULL, 
	 Nom varchar(100) NOT NULL,
	 TypeSerieFilm varchar(100) NOT NULL,
	 BoxOffice varchar(100) NOT NULL,
	 DateSortie date,
	 CONSTRAINT Production_PK PRIMARY KEY (ID),
	 CONSTRAINT ID_Realisateur_FK FOREIGN KEY (ID_Realisateur) REFERENCES Realisateur(ID),
	 CONSTRAINT ID_Scenariste_FK FOREIGN KEY (ID_Scenariste) REFERENCES Scenariste(ID),
	 CONSTRAINT ID_Producteur_FK FOREIGN KEY (ID_Producteur) REFERENCES Producteur(ID),
     CONSTRAINT ID_Genre_FK FOREIGN KEY (ID_Genre) REFERENCES Genre(ID),
     CONSTRAINT ID_Pays_FK FOREIGN KEY (ID_Pays) REFERENCES Pays(ID),
	 )
GO
CREATE TABLE Avis (
      ID INT IDENTITY (1,1) NOT NULL,
	  ID_Utilisateur INT IDENTITY (1,1) NOT NULL,
	  ID_Production INT IDENTITY (1,1) NOT NULL,
      Note varchar(100) NOT NULL,
	  commentaire varchar(100) NOT NULL,
	  CONSTRAINT Avis_PK PRIMARY KEY (ID),
	  CONSTRAINT ID_Utilisateur_FK FOREIGN KEY (ID_Utilisateur) REFERENCES Utilisateur(ID),
	  CONSTRAINT ID_Production_FK FOREIGN KEY (ID_Production) REFERENCES Production(ID),
	  )
  GO   
  
 CREATE TABLE ActeurObjet (
     ID INT IDENTITY (1,1) NOT NULL,
	 ID_Production INT IDENTITY (1,1) NOT NULL, 
	 ID_Acteur INT IDENTITY (1,1) NOT NULL, 
	 CONSTRAINT ActeurObjet_PK PRIMARY KEY (ID),
	 CONSTRAINT ID_Acteur_FK FOREIGN KEY (ID_Acteur) REFERENCES Acteur(ID),
	 CONSTRAINT ID_Production_FK FOREIGN KEY (ID_Production) REFERENCES Production(ID),
	 
	 )
 GO 



INSERT INTO  SCENARISTE (ID,NOM,DateNaissance) VALUES ('Denzel_Washington','28/12/1954')

INSERT INTO  PAYS (Nom) VALUES ('USA')

INSERT INTO  REALISATEUR (NOM,DateNaissance) VALUES ('Jean','8/2/1984')

INSERT INTO  Producteur (NOM,DateNaissance) VALUES ('Denzel_Washington','28/12/1954')

INSERT INTO  GENRE (typeFilmSerie) VALUES ('Equalizer','2362310091')

INSERT INTO  ACTEUR (NOM,DateNaissance) VALUES ('Denzel_Washington','28/12/1954')

INSERT INTO  Utilisateur (NOM,Prenom,email,Mot_de_passe,EtAdmin) VALUES ('Jean','Nickel','JeanNickel@gmail.com','123456','')

INSERT INTO  Production (ImageAffiche,Nom,TypeSerieFilm,BoxOffice,DateSortie) VALUES ('SOCIETE_GENERAL','Equalizer','Equalizer','Equalizer')

INSERT INTO  Avis (Note,commentaire) VALUES ('5/10','un bon film')








