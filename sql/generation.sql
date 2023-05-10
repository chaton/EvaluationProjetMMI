DROP TABLE IF EXISTS Enseignement ;
CREATE TABLE Enseignement (IdEnseignement_Enseignement INT AUTO_INCREMENT NOT NULL,
NomEnseignement_Enseignement VARCHAR(80),
DescriptionEnseignement_Enseignement TEXT,
CodeEnseignement_Enseignement VARCHAR(24),
IdModalite_Modalite INT,
PRIMARY KEY (IdEnseignement_Enseignement)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Competence_UE ;
CREATE TABLE Competence_UE (IdCompetence_Competence_UE INT AUTO_INCREMENT NOT NULL,
NomCompetence_Competence_UE VARCHAR(80),
DescriptionCompetence_Competence_UE TEXT,
UrlCompetence_Competence_UE VARCHAR(80),
IdParcours_Parcours INT,
PRIMARY KEY (IdCompetence_Competence_UE)) ENGINE=InnoDB;

DROP TABLE IF EXISTS AC ;
CREATE TABLE AC (IdAc_AC INT AUTO_INCREMENT NOT NULL,
NomAC_AC VARCHAR(80),
DesignationAC_AC TEXT,
CodeAC_AC VARCHAR(20),
IdCompetence_Competence_UE INT,
IdNiveau_Niveau INT,
PRIMARY KEY (IdAc_AC)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Modalite ;
CREATE TABLE Modalite (IdModalite_Modalite INT AUTO_INCREMENT NOT NULL,
NomModalite_Modalite VARCHAR(80),
DescriptionModalite_Modalite TEXT,
PRIMARY KEY (IdModalite_Modalite)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Etudiant ;
CREATE TABLE Etudiant (IdEtudiant_Etudiant INT AUTO_INCREMENT NOT NULL,
NumeroEtudiant_Etudiant VARCHAR(20),
Nom_Etudiant VARCHAR(24),
Prenom_Etudiant VARCHAR(24),
DateNaiss_Etudiant DATE,
IdPromo_Promo INT,
IdNiveau_Niveau INT,
IdParcours_Parcours INT,
PRIMARY KEY (IdEtudiant_Etudiant)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Niveau ;
CREATE TABLE Niveau (IdNiveau_Niveau INT AUTO_INCREMENT NOT NULL,
NomNiveau_Niveau VARCHAR(80),
PRIMARY KEY (IdNiveau_Niveau)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Travail_En_Groupe ;
CREATE TABLE Travail_En_Groupe (IdGroupe_Groupe INT AUTO_INCREMENT NOT NULL,
NomGroupe_Travail_En_Groupe VARCHAR(80),
Sujet_Travail_En_Groupe TEXT,
IdEnseignement_Enseignement INT,
IdEnseignant_Enseignant INT,
PRIMARY KEY (IdGroupe_Groupe)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Eval ;
CREATE TABLE Eval (IdEval_Eval INT AUTO_INCREMENT NOT NULL,
CodeEval_Eval VARCHAR(24),
NomEval_Eval VARCHAR(80),
DescriptionEval_Eval TEXT,
IdEnseignement_Enseignement INT,
PRIMARY KEY (IdEval_Eval)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Enseignant ;
CREATE TABLE Enseignant (IdEnseignant_Enseignant INT AUTO_INCREMENT NOT NULL,
NomEnseignant_Enseignant VARCHAR(80),
PrenomEnseignant_Enseignant VARCHAR(80),
PRIMARY KEY (IdEnseignant_Enseignant)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Promo ;
CREATE TABLE Promo (IdPromo_Promo INT AUTO_INCREMENT NOT NULL,
Designation_Promo VARCHAR(80),
AnneeDiplome_Promo INT,
PRIMARY KEY (IdPromo_Promo)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Parcours ;
CREATE TABLE Parcours (IdParcours_Parcours INT AUTO_INCREMENT NOT NULL,
DescriptionParcours_Parcours TEXT,
UrlParcours_Parcours VARCHAR(80),
PRIMARY KEY (IdParcours_Parcours)) ENGINE=InnoDB;

DROP TABLE IF EXISTS met_en_oeuvre ;
CREATE TABLE met_en_oeuvre (IdEnseignement_Enseignement INT AUTO_INCREMENT NOT NULL,
IdCompetence_Competence_UE INT NOT NULL,
Coefficient_MetEnOeuvre FLOAT,
PRIMARY KEY (IdEnseignement_Enseignement,
 IdCompetence_Competence_UE)) ENGINE=InnoDB;

DROP TABLE IF EXISTS utilise ;
CREATE TABLE utilise (IdEnseignement_Enseignement INT AUTO_INCREMENT NOT NULL,
IdAc_AC INT NOT NULL,
PRIMARY KEY (IdEnseignement_Enseignement,
 IdAc_AC)) ENGINE=InnoDB;

DROP TABLE IF EXISTS realise ;
CREATE TABLE realise (IdEtudiant_Etudiant INT AUTO_INCREMENT NOT NULL,
IdGroupe_Groupe INT NOT NULL,
PRIMARY KEY (IdEtudiant_Etudiant,
 IdGroupe_Groupe)) ENGINE=InnoDB;

DROP TABLE IF EXISTS contribue ;
CREATE TABLE contribue (IdEnseignement_Enseignement INT AUTO_INCREMENT NOT NULL,
IdEnseignant_Enseignant INT NOT NULL,
PRIMARY KEY (IdEnseignement_Enseignement,
 IdEnseignant_Enseignant)) ENGINE=InnoDB;

DROP TABLE IF EXISTS participe_jury ;
CREATE TABLE participe_jury (IdEnseignant_Enseignant INT AUTO_INCREMENT NOT NULL,
IdEval_Eval INT NOT NULL,
PRIMARY KEY (IdEnseignant_Enseignant,
 IdEval_Eval)) ENGINE=InnoDB;

DROP TABLE IF EXISTS a_valide ;
CREATE TABLE a_valide (IdEtudiant_Etudiant INT AUTO_INCREMENT NOT NULL,
IdNiveau_Niveau INT NOT NULL,
PRIMARY KEY (IdEtudiant_Etudiant,
 IdNiveau_Niveau)) ENGINE=InnoDB;

DROP TABLE IF EXISTS specialite ;
CREATE TABLE specialite (IdEnseignant_Enseignant INT AUTO_INCREMENT NOT NULL,
IdParcours_Parcours INT NOT NULL,
PRIMARY KEY (IdEnseignant_Enseignant,
 IdParcours_Parcours)) ENGINE=InnoDB;

