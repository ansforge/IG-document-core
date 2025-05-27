Logical: CRBIOChapitre
//Id: fr-cr-bio-chapitre
Parent: Section
Title: "Compte rendu de biologie de 1er niveau"
Description: """Modèle logique métier de la section Compte rendu de biologie de 1er niveau"""
Characteristics: #can-be-target

* choice[x] 1..* CRBIOSousChapitre or ResultatsExamensBiologieMedicale "Section de 1er niveau (Chapitre) qui contient : 
  • soit une seule entrée FR-Resultats-examens-de-biologie-medicale,  
  • soit une ou plusieurs sous-sections FR-CR-BIO-Sous-Chapitre"

