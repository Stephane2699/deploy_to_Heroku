DATABASE : PostgreSQL

CREATE DATABASE capitainerie;

CREATE USER capitainerie WITH PASSWORD '123456';

CREATE TABLE Devise(
    id_Devise SERIAL PRIMARY KEY not null,
    nom_Devise VARCHAR(10) NOT NULL
);
INSERT INTO Devise (nom_Devise) VALUES ('USD');
INSERT INTO Devise (nom_Devise) VALUES ('EUR');

CREATE TABLE Taux_Devise(
  id_Taux SERIAL PRIMARY KEY not null,
  date_Taux VARCHAR(10) NOT NULL,
  id_Devise INT NOT NULL,
  value_Ar INT NOT NULL,
  FOREIGN KEY (id_Devise) REFERENCES Devise(id_Devise)
);

CREATE TABLE TARIF_Quais(
    id_Tarif SERIAL PRIMARY KEY NOT NULL,
    id_Quais INT NOT NULL,
    tarif_Quais INT NOT NULL,
    id_Devise INT NOT NULL,
    min_duree INT NOT NULL,
    max_duree INT NOT NULL,
    FOREIGN KEY (id_Quais) REFERENCES Quais(id_Quais),
    FOREIGN KEY (id_Devise) REFERENCES Devise(id_Devise)
);

INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,50,1,15,45);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,150,1,46,76);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,250,1,77,107);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,350,1,108,138);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,350,1,139,160);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (1,350,1,161,180);

INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,70,2,15,45);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,170,2,46,76);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,270,2,77,107);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,370,2,108,138);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,470,2,139,160);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (2,570,2,161,180);

INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,100,1,15,45);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,200,1,46,76);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,300,1,77,107);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,400,1,108,138);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,500,1,139,160);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (3,600,1,161,180);

INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,120,2,15,45);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,220,2,46,76);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,320,2,77,107);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,420,2,108,138);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,520,2,139,160);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (4,620,2,161,180);

INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,150,2,15,45);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,300,2,46,76);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,450,2,77,107);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,600,2,108,138);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,750,2,139,160);
INSERT INTO TARIF_Quais (id_Quais,tarif_Quais,id_Devise,min_duree,max_duree) VALUES (5,900,2,161,180);

CREATE TABLE Navire(
    id_Navire SERIAL PRIMARY KEY not null,
    nom_Navire varchar(20) not null,
    poids_Navire int not null
);

INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('Cosco Asia',20);
INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('Queen Marry',30);
INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('Calais Seaway',35);
INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('ChilBerta',20);
INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('Armorique',40);
INSERT INTO Navire (nom_Navire,poids_Navire) VALUES ('Corsaire',25);

/*-- Quais et Caractéristiques --*/
CREATE TABLE Quais(
    id_Quais SERIAL PRIMARY KEY not null,
    nom_Quais varchar(20) not null,
    capacite_Quais int not null,
    max_Navire int not null,
    tarif_Quais int not null
);

INSERT INTO Quais (nom_Quais,capacite_Quais,max_Navire,tarif_Quais) VALUES ('Q1',500,3,10000);
INSERT INTO Quais (nom_Quais,capacite_Quais,max_Navire,tarif_Quais) VALUES ('Q2',200,2,5000);
INSERT INTO Quais (nom_Quais,capacite_Quais,max_Navire,tarif_Quais) VALUES ('Q3',600,3,15000);
INSERT INTO Quais (nom_Quais,capacite_Quais,max_Navire,tarif_Quais) VALUES ('Q4',300,2,6000);
INSERT INTO Quais (nom_Quais,capacite_Quais,max_Navire,tarif_Quais) VALUES ('Q5',300,1,6000);


CREATE TABLE Cargaison(
    id_Cargaison SERIAL PRIMARY KEY not null,
    nom_Cargaison varchar(20) not null
);

INSERT INTO Cargaison (nom_Cargaison) VALUES ('Petrole');
INSERT INTO Cargaison (nom_Cargaison) VALUES ('Conteneur');
INSERT INTO Cargaison (nom_Cargaison) VALUES ('Personne');

CREATE TABLE Prevision(
    id_Prevision SERIAL PRIMARY KEY not null,
    date_Prevision varchar(15) not null,
    id_Navire int not null,
    date_heure_Arrival TIMESTAMP not null,
    duree int not null,
    id_Quais int not null,
    id_Cargaison int not null,
    foreign key (id_Cargaison) references Cargaison(id_Cargaison),
    foreign key (id_Navire) references Navire(id_Navire)
);

CREATE TABLE Arrivee_Reel(
    id_Arrive SERIAL PRIMARY KEY NOT NULL,
    id_Prevision INT NOT NULL,
    Arrivee TIMESTAMP NOT NULL,
    foreign key (id_Prevision) references Prevision(id_Prevision)
);

CREATE TABLE Mouvement_Navire
(
    id_Mouvement SERIAL PRIMARY KEY NOT NULL,
    id_Prevision INT NOT NULL,
    Nom_Quais_Sur INT NOT NULL,
    Arrivee_sur_Quais TIMESTAMP NOT NULL,
    id_Quais_Vers INT NOT NULL,
    Depart_sur_Quais TIMESTAMP NOT NULL,
    duree_sur_Quais INT NOT NULL,
    FOREIGN KEY(id_Prevision) REFERENCES Prevision(id_Prevision),
    FOREIGN KEY(id_Quais_Sur) REFERENCES Quais(id_Quais),
    FOREIGN KEY(id_Quais_Vers) REFERENCES Quais(id_Quais)
);

CREATE OR REPLACE VIEW Previsions AS SELECT 
Prevision.id_Prevision,
Navire.nom_Navire,
Prevision.date_heure_Arrival,
Prevision.duree,
Quais.nom_Quais,
Cargaison.nom_Cargaison
FROM Prevision JOIN Navire
ON Prevision.id_Navire = Navire.id_Navire
JOIN Quais ON Quais.id_Quais = Prevision.id_Quais
JOIN Cargaison ON Cargaison.id_Cargaison = Prevision.id_Cargaison;

CREATE OR REPLACE VIEW Taux_Multi_Devise
AS SELECT
Taux_Devise.date_Taux,
Devise.id_Devise,
Devise.nom_Devise,
Taux_Devise.value_Ar
FROM Devise JOIN Taux_Devise 
ON Devise.id_Devise = Taux_Devise.id_Devise
ORDER BY Devise.id_Devise ASC;

CREATE OR REPLACE VIEW Quais_Tarif
AS SELECT
Quais.id_Quais,
Quais.nom_Quais,
TARIF_Quais.tarif_Quais,
Devise.id_Devise,
Devise.nom_Devise,
TARIF_Quais.min_duree,
TARIF_Quais.max_duree
FROM Devise JOIN TARIF_Quais 
ON Devise.id_Devise = TARIF_Quais.id_Devise
JOIN Quais ON Quais.id_Quais = TARIF_Quais.id_Quais;

CREATE OR REPLACE VIEW Montant_Multi_Devise
AS SELECT 
Quais_Tarif.nom_Quais,
(Mouvement_Navire.duree_sur_Quais * Quais_Tarif.tarif_Quais) as Montant_Multi_Devise,
Quais_Tarif.id_Devise,
Quais_Tarif.nom_Devise,
Mouvement_Navire.id_Prevision
FROM Mouvement_Navire JOIN Quais_Tarif
ON Mouvement_Navire.id_Quais_Vers = Quais_Tarif.id_Quais 
WHERE Mouvement_Navire.duree_sur_Quais>=Quais_Tarif.min_duree AND Mouvement_Navire.duree_sur_Quais<=Quais_Tarif.max_duree;

CREATE OR REPLACE VIEW Infos_Navire
AS SELECT
Previsions.id_Prevision,
Previsions.nom_Navire,
Previsions.nom_Cargaison,
Navire.poids_Navire
FROM Previsions JOIN Montant_Multi_Devise
ON Previsions.id_Prevision = Montant_Multi_Devise.id_Prevision
JOIN Navire ON Navire.nom_Navire = Previsions.nom_Navire;

CREATE OR REPLACE VIEW Montant_Multi_Devise_avec_Tonnes
AS SELECT 
Montant_Multi_Devise.id_Prevision,
(Montant_Multi_Devise.Montant_Multi_Devise * Infos_Navire.poids_Navire) as Montant_avec_Poids_Vide,
Montant_Multi_Devise.id_Devise,
Montant_Multi_Devise.nom_Devise,
Infos_Navire.nom_Navire,
Infos_Navire.nom_Cargaison,
Infos_Navire.poids_Navire,
Montant_Multi_Devise.nom_Quais
FROM Montant_Multi_Devise JOIN Infos_Navire
ON Montant_Multi_Devise.id_Prevision = Infos_Navire.id_Prevision;

CREATE OR REPLACE VIEW Taux_du_Jour 
AS SELECT * FROM Taux_Multi_Devise 
WHERE date_Taux::date = current_date;

CREATE OR REPLACE VIEW Nom_Quais_Sur
AS SELECT 
Mouvement_Navire.id_Prevision,
Quais.id_Quais,
Quais.nom_Quais
FROM Quais JOIN Mouvement_Navire ON 
Quais.id_Quais = Mouvement_Navire.id_Quais_Sur;

CREATE OR REPLACE VIEW Passage_Navire
AS SELECT 
Montant_Multi_Devise_avec_Tonnes.id_Prevision,
Nom_Quais_Sur.nom_Quais as Quais_Sur,
Mouvement_Navire.Arrivee_sur_Quais,
Montant_Multi_Devise_avec_Tonnes.nom_Quais as Quais_Vers,
Mouvement_Navire.Depart_sur_Quais,
Montant_Multi_Devise_avec_Tonnes.Montant_avec_Poids_Vide,
Montant_Multi_Devise_avec_Tonnes.nom_Devise,
(Montant_Multi_Devise_avec_Tonnes.Montant_avec_Poids_Vide * Taux_du_Jour.value_Ar) AS Montant_AR
FROM Montant_Multi_Devise_avec_Tonnes
JOIN Taux_du_Jour
ON Montant_Multi_Devise_avec_Tonnes.id_Devise = Taux_du_Jour.id_Devise
JOIN Mouvement_Navire ON Mouvement_Navire.id_Prevision = Montant_Multi_Devise_avec_Tonnes.id_Prevision
JOIN Nom_Quais_Sur ON Nom_Quais_Sur.id_Prevision = Mouvement_Navire.id_Prevision;

DROP VIEW Passage_Navire;
DROP VIEW Montant_Multi_Devise;
DROP VIEW Previsions;
DROP TABLE Mouvement_Navire;
DROP TABLE Arrivee_Reel;
DROP TABLE Prevision;
DROP TABLE Navire;

CREATE TABLE Depart_Navire(
    id_Depart SERIAL PRIMARY KEY NOT NULL,
    id_Prevision INT NOT NULL,
    nom_Navire VARCHAR(30) NOT NULL,
    nom_Cargaison VARCHAR(30) NOT NULL,
    departure TIMESTAMP NOT NULL,
    foreign key (id_Prevision) references Prevision(id_Prevision)
);