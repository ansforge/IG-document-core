Logical: FRLMTraitementsAdministres
Id: fr-lm-traitements-administres
Parent: Section
Title: "Modèle logique métier - FR LM Traitements administrés"
Description: """Section Traitements administrés"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * traitementAdministre 1..* FRLMTraitement "Entrée Traitement"