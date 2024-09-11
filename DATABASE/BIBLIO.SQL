DROP DATABASE IF EXISTS biblio;

CREATE DATABASE IF NOT EXISTS biblio;
USE biblio;
# -----------------------------------------------------------------------------
#       TABLE : LIVRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LIVRE
 (
   COTELIVRE CHAR(10) NOT NULL  ,
   CODECLASSE CHAR(6) NOT NULL  ,
   TITRE CHAR(32) NULL  ,
   AUTEUR CHAR(32) NULL  ,
   EXCLUS_DE_PRET BOOL NULL  
   , PRIMARY KEY (COTELIVRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE LIVRE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_LIVRE_CLASSE_LIVRE
     ON LIVRE (CODECLASSE ASC);

# -----------------------------------------------------------------------------
#       TABLE : EXEMPLAIRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EXEMPLAIRE
 (
   COTELIVRE CHAR(10) NOT NULL  ,
   NUMEXEMPLAIRE INTEGER(4) NOT NULL  ,
   ETAT CHAR(32) NULL  
   , PRIMARY KEY (COTELIVRE,NUMEXEMPLAIRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EXEMPLAIRE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EXEMPLAIRE_LIVRE
     ON EXEMPLAIRE (COTELIVRE ASC);

# -----------------------------------------------------------------------------
#       TABLE : CLASSE_LIVRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CLASSE_LIVRE
 (
   CODECLASSE CHAR(6) NOT NULL  ,
   NOMCLASSE CHAR(32) NULL  
   , PRIMARY KEY (CODECLASSE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CALENDRIER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CALENDRIER
 (
   DATE_PRET CHAR(32) NOT NULL  
   , PRIMARY KEY (DATE_PRET) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ADHERENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADHERENT
 (
   NUMADHERENT CHAR(13) NOT NULL  ,
   NOM CHAR(32) NULL  ,
   PRENOM CHAR(32) NULL  ,
   EMAIL CHAR(64) NULL  ,
   TEL CHAR(10) NULL  ,
   DOMAINE CHAR(32) NULL  ,
   DATEADHESION DATE NULL  ,
   ADRESSE CHAR(32) NULL  ,
   PHOTOADHERENT LONGBLOB NULL  
   , PRIMARY KEY (NUMADHERENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : EMPRUNTER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EMPRUNTER
 (
   NUMADHERENT CHAR(13) NOT NULL  ,
   COTELIVRE CHAR(10) NOT NULL  ,
   NUMEXEMPLAIRE INTEGER(4) NOT NULL  ,
   DATE_PRET CHAR(32) NOT NULL  ,
   DATERETOUR DATE NULL  
   , PRIMARY KEY (NUMADHERENT,COTELIVRE,NUMEXEMPLAIRE,DATE_PRET) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EMPRUNTER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EMPRUNTER_ADHERENT
     ON EMPRUNTER (NUMADHERENT ASC);

CREATE  INDEX I_FK_EMPRUNTER_EXEMPLAIRE
     ON EMPRUNTER (COTELIVRE ASC,NUMEXEMPLAIRE ASC);

CREATE  INDEX I_FK_EMPRUNTER_CALENDRIER
     ON EMPRUNTER (DATE_PRET ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE LIVRE 
  ADD FOREIGN KEY FK_LIVRE_CLASSE_LIVRE (CODECLASSE)
      REFERENCES CLASSE_LIVRE (CODECLASSE) ;


ALTER TABLE EXEMPLAIRE 
  ADD FOREIGN KEY FK_EXEMPLAIRE_LIVRE (COTELIVRE)
      REFERENCES LIVRE (COTELIVRE) ;


ALTER TABLE EMPRUNTER 
  ADD FOREIGN KEY FK_EMPRUNTER_ADHERENT (NUMADHERENT)
      REFERENCES ADHERENT (NUMADHERENT) ;


ALTER TABLE EMPRUNTER 
  ADD FOREIGN KEY FK_EMPRUNTER_EXEMPLAIRE (COTELIVRE,NUMEXEMPLAIRE)
      REFERENCES EXEMPLAIRE (COTELIVRE,NUMEXEMPLAIRE) ;


ALTER TABLE EMPRUNTER 
  ADD FOREIGN KEY FK_EMPRUNTER_CALENDRIER (DATE_PRET)
      REFERENCES CALENDRIER (DATE_PRET) ;

