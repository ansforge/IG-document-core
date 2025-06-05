Logical: ProblemesActifs 
Parent: Section
//Id: fr-problemes-actifs 
Title: "Problèmes actifs"
Description: """Modèle logique métier de la section Problèmes actifs"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * problemes 1..* Probleme "Entrée Problème"