Logical: FrTraitementsAdministres
//Id: fr-traitement-administres
Parent: Section
Title: "Traitements administrés"
Description: """Section Traitements administrés"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * traitementAdministre 1..* FrTraitement "Entrée Traitement"