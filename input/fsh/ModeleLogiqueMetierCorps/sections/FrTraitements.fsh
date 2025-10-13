Logical: FrTraitements 
Parent : Section 
Title: "Traitements"
Description: """Section Traitements"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * traitements  1..* FrTraitement "Entrée Traitement"