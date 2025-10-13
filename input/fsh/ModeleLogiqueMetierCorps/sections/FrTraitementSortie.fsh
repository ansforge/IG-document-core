Logical: FrTraitementSortie
Parent: Section
Title: "Traitements à la sortie"
Description: """Section Traitements à la sortie"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * traitementSortie 1..* FrTraitement "Entrée Traitement"