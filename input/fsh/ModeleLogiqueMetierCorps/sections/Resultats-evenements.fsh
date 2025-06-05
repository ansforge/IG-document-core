Logical: ResultatsEvenements
//Id: fr-resultats-evenements
Parent: Section
Title: "Résultats d'événements"
Description: """Modèle logique métier de la section Résultats d'événements"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * observation 1..* SimpleObservation "Entrée Simple observation"
  * transfertPatient 0..* TransfertDuPatient "Entrée Transfert du patient"
  * probleme  0..* Probleme "Entrée Problème"