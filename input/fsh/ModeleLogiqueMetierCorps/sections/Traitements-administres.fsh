Logical: TraitementsAdministres
//Id: fr-traitement-administres
Parent: Section
Title: "Traitements administrés"
Description: """Modèle logique métier de la section Traitements administrés"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * traitementAdministre 1..* Traitement "Entrée Traitement"