Logical: FrResultatsEvenements
Parent: Section
Title: "Résultats d'événements"
Description: """Section Résultats d'événements"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * observation 1..* FrObservation "Entrée Simple observation"
  * transfertPatient 0..* FrTransfertDuPatient "Entrée Transfert du patient"
  * probleme  0..* FrProbleme "Entrée Problème"