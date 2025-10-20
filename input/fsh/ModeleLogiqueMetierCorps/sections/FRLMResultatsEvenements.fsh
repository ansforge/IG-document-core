Logical: FRLMResultatsEvenements
Id: fr-lm-resultats-evenements
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Résultats d'événements"
Description: """Section Résultats d'événements"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * observation 1..* FRLMObservation "Entrée Simple observation"
  * transfertPatient 0..* FRLMTransfertDuPatient "Entrée Transfert du patient"
  * probleme  0..* FRLMProbleme "Entrée Problème"