Logical: CRBIOSousChapitre
//Id: fr-cr-bio-sous-chapitre
Parent: Section
Title: "Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)"
Description: """Modèle logique métier de la section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..1
  * resultatsExamensBiologieMedicale 1..1 ResultatsExamensBiologieMedicale "Entrée Résultats d'examens de biologie médicale"