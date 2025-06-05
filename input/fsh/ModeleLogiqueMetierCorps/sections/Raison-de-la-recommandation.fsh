Logical: RaisonRecommandation
//Id: fr-raison-de-la-recommandation
Parent: Section
Title: "Raison de la recommandation"
Description: """Modèle logique métier de la section Raison de la recommandation"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * observation  1..1 SimpleObservation "Entrée Simple observation"
  * problemes  1..* Probleme "Entrée Problème"