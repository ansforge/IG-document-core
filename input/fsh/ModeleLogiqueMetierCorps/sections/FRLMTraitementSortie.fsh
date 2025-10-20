Logical: FRLMTraitementSortie
Id: fr-lm-traitement-sortie
Parent: Section
Title: "Modèle logique métier - FR LM Traitements à la sortie"
Description: """Section Traitements à la sortie"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * traitementSortie 1..* FRLMTraitement "Entrée Traitement"