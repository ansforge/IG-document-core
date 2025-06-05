Logical: AntecedentsMedicaux 
Parent: Section
//Id: fr-antecedents-medicaux
Title: "Antécédents médicaux"
Description: """Modèle logique métier de la section Antécédents médicaux"""
Characteristics: #can-be-target

* titreSection 1..1
* sousSection 0..0
* entree 1..*
  * problemes 1..* Probleme "Entrée Problème"