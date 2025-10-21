Logical: FRLMProblemesActifs 
Id: fr-lm-problemes-actifs
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Problèmes actifs"
Description: """Section Problèmes actifs"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * problemes 1..* FRLMProbleme "Entrée Problème"