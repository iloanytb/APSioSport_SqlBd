DROP DATABASE IF exists bdSport;
CREATE DATABASE if not exists bdSport;
USE bdSport;
CREATE TABLE IF NOT EXISTS  Sportif
(
	id	int Auto_Increment,
    nom	varchar(15),
    prenom	varchar(20),
    dateNais	date,
    rue	varchar(30),
    cp	varchar(5),
    ville varchar(20),
    PRIMARY KEY (id)
)  
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

Create table If not Exists Sport
(
	id int Auto_Increment,
    lib	varchar(10),
    Primary Key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

Create Table if not exists Utilisateur
(
	id	int Auto_Increment,
    login	varchar(15),
    psw	varchar(50),
    PRIMARY KEY (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--  Alter Table pour le 'case sensitive' pour sécuriser un peu
ALTER TABLE utilisateur MODIFY psw VARCHAR(50) COLLATE utf8mb4_bin;
ALTER TABLE utilisateur MODIFY login VARCHAR(15) COLLATE utf8mb4_bin;

Insert Into Utilisateur(login,psw) Values
("qdavid","TestDav63!")
;

Create Table If Not Exists Pratiquer_Sport
(
	idSport	int,
    idSportif int,
    nivExp	varchar(13),
    Primary Key (idSport,idSportif),
    Foreign Key (idSport) References Sport(id),
    Foreign Key (idSportif) References Sportif(id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

Insert Into Sportif(nom,prenom,dateNais,rue,cp,ville) Values 
("Marchand","Léon","2002-05-17"," 9 All. Gabriel Biénès","31400","Toulouse"),
("Paletier","Josselin","1975-03-14","8 Rue des vignes","69000","Lyon"),
("Quintin","David","1980-09-07","9 Place Paul Eychart","63100","Clermont-Ferrand"),
("Roland","Jules","2010-06-15","16 Place Pigalle","63000","Clermont-Ferrand")
;
Insert Into Sport(lib) Values
("Natation"),
("Tennis"),
("Basketball"),
("Badmington"),
("Football")
;
-- nivExp,sport
Insert Into Pratiquer_Sport Values
(1,1,"Professionnel"),
(2,1,"Débutant"),
(2,2,"Confirmé"),
(5,2,"Avancé"),
(3,3,"Avancé"),
(5,3,"Débutant"),
(4,4,"Avancé")
;