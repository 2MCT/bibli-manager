DROP DATABASE IF EXISTS bibli;

CREATE DATABASE IF NOT EXISTS bibli;
USE bibli;
# -----------------------------------------------------------------------------
#       TABLE : LIVRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LIVRE
 (
   COTELIVRE dbText NOT NULL  ,
   CODECLASSE dbText NOT NULL  ,
   TITRE dbText NULL  ,
   AUTEUR dbText NULL  ,
   EXCLUS_DE_PRET dbBoolean NULL  
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
   COTELIVRE dbText NOT NULL  ,
   NUMEXEMPLAIRE dbInteger NOT NULL  ,
   ETAT dbText NULL  
   , PRIMARY KEY (COTELIVRE,NUMEXEMPLAIRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EXEMPLAIRE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EXEMPLAIRE_LIVRE
     ON EXEMPLAIRE (COTELIVRE ASC);

# -----------------------------------------------------------------------------
#       TABLE : EMPRUNT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EMPRUNT
 (
   NUMEMPRUNT dbInteger NOT NULL  ,
   NUMEXEMPLAIRE dbInteger NOT NULL  ,
   NUMADHERENT dbText NOT NULL  ,
   COTELIVRE dbText NOT NULL  ,
   DATEEMPRUNT dbDate NULL  ,
   DATERETOUR dbDate NULL  ,
   DATELIMITE dbDate NULL  
   , PRIMARY KEY (NUMEMPRUNT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EMPRUNT
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EMPRUNT_EXEMPLAIRE
     ON EMPRUNT (COTELIVRE ASC,NUMEXEMPLAIRE ASC);

CREATE  INDEX I_FK_EMPRUNT_ADHERENT
     ON EMPRUNT (NUMADHERENT ASC);

# -----------------------------------------------------------------------------
#       TABLE : CLASSE_LIVRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CLASSE_LIVRE
 (
   CODECLASSE dbText NOT NULL  ,
   NOMCLASSE dbText NULL  
   , PRIMARY KEY (CODECLASSE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ADHERENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADHERENT
 (
   NUMADHERENT dbText NOT NULL  ,
   NOM dbText NULL  ,
   PRENOM dbText NULL  ,
   EMAIL dbText NULL  ,
   TEL dbText NULL  ,
   DATEADHESION dbDate NULL  ,
   PHOTOADHERENT dbLongBinary NULL  ,
   ADRESSE dbText NULL  
   , PRIMARY KEY (NUMADHERENT) 
 ) 
 comment = "";


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE LIVRE 
  ADD FOREIGN KEY FK_LIVRE_CLASSE_LIVRE (CODECLASSE)
      REFERENCES CLASSE_LIVRE (CODECLASSE) ;


ALTER TABLE EXEMPLAIRE 
  ADD FOREIGN KEY FK_EXEMPLAIRE_LIVRE (COTELIVRE)
      REFERENCES LIVRE (COTELIVRE) ;


ALTER TABLE EMPRUNT 
  ADD FOREIGN KEY FK_EMPRUNT_EXEMPLAIRE (COTELIVRE,NUMEXEMPLAIRE)
      REFERENCES EXEMPLAIRE (COTELIVRE,NUMEXEMPLAIRE) ;


ALTER TABLE EMPRUNT 
  ADD FOREIGN KEY FK_EMPRUNT_ADHERENT (NUMADHERENT)
      REFERENCES ADHERENT (NUMADHERENT) ;

