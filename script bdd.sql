#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: bibliothèque
#------------------------------------------------------------

CREATE TABLE bibliotheque(
        id_bibliotheque int (11) Auto_increment  NOT NULL ,
        nom             Varchar (25) NOT NULL ,
        PRIMARY KEY (id_bibliotheque )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: element
#------------------------------------------------------------

CREATE TABLE element(
        id_element      int (11) Auto_increment  NOT NULL ,
        nom_fichier     Varchar (25) NOT NULL ,
        id_bibliotheque Int NOT NULL ,
        PRIMARY KEY (id_element )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: film
#------------------------------------------------------------

CREATE TABLE film(
        id_film     int (11) Auto_increment  NOT NULL ,
        titre       Varchar (25) NOT NULL ,
        realisateur Varchar (25) NOT NULL ,
        id_element  Int NOT NULL ,
        PRIMARY KEY (id_film ,id_element )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: musique
#------------------------------------------------------------

CREATE TABLE musique(
        id_musique int (11) Auto_increment  NOT NULL ,
        nom        Varchar (25) NOT NULL ,
        artiste    Varchar (25) NOT NULL ,
        album      Varchar (25) ,
        id_element Int NOT NULL ,
        PRIMARY KEY (id_musique ,id_element )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: clip
#------------------------------------------------------------

CREATE TABLE clip(
        id_clip      int (11) Auto_increment  NOT NULL ,
        id_element   Int NOT NULL ,
        id_musique   Int NOT NULL ,
        id_element_1 Int NOT NULL ,
        PRIMARY KEY (id_clip ,id_element )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: utilisateur
#------------------------------------------------------------

CREATE TABLE utilisateur(
        id_utilisateur     int (11) Auto_increment  NOT NULL ,
        login              Varchar (25) NOT NULL ,
        password           Varchar (25) NOT NULL ,
        droit_modification Bool NOT NULL ,
        PRIMARY KEY (id_utilisateur )
)ENGINE=InnoDB;

ALTER TABLE element ADD CONSTRAINT FK_element_id_bibliotheque FOREIGN KEY (id_bibliotheque) REFERENCES bibliotheque(id_bibliotheque);
ALTER TABLE film ADD CONSTRAINT FK_film_id_element FOREIGN KEY (id_element) REFERENCES element(id_element);
ALTER TABLE musique ADD CONSTRAINT FK_musique_id_element FOREIGN KEY (id_element) REFERENCES element(id_element);
ALTER TABLE clip ADD CONSTRAINT FK_clip_id_element FOREIGN KEY (id_element) REFERENCES element(id_element);
ALTER TABLE clip ADD CONSTRAINT FK_clip_id_musique FOREIGN KEY (id_musique) REFERENCES musique(id_musique);
ALTER TABLE clip ADD CONSTRAINT FK_clip_id_element_1 FOREIGN KEY (id_element_1) REFERENCES element(id_element);
