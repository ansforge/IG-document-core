Logical: FrRaisonRecommandation
Parent: Section
Title: "Raison de la recommandation"
Description: """Section Raison de la recommandation"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * observation  1..1 FrObservation "Entrée Simple observation"
  * problemes  1..* FrProbleme "Entrée Problème"