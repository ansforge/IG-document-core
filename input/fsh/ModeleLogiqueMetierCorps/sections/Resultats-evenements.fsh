Logical: ResultatsEvenements
//Id: fr-resultats-evenements
Parent: Section
Title: "Résultats d'événements"
Description: """Modèle logique métier de la section Résultats d'événements"""
Characteristics: #can-be-target

* observation 1..* SimpleObservation "Entrée Simple observation"
* transfertPatient 0..* Base "Entrée Transfert du patient"
* probleme  0..* Probleme "Entrée Problème"