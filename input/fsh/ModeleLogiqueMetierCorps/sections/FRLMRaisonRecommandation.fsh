Logical: FRLMRaisonRecommandation
Id: fr-lm-raison-recommandation
Parent: Section
Title: "Modèle logique métier - FR LM Raison de la recommandation"
Description: """Section Raison de la recommandation"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * observation  1..1 FRLMObservation "Entrée Simple observation"
  * problemes  1..* FRLMProbleme "Entrée Problème"