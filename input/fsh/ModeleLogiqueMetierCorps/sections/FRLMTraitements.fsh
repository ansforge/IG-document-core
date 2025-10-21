Logical: FRLMTraitements 
Id: fr-lm-traitements
Parent : FRLMSection 
Title: "Modèle logique métier - FR LM Traitements"
Description: """Section Traitements"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * traitements  1..* FRLMTraitement "Entrée Traitement"