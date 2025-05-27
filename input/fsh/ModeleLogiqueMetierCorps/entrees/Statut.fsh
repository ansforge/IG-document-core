Logical: Statut 
//Id: fr-statut 
Title: "Statut"
Description: """Modèle logique métier de l'entrée Statut"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code d el'observation"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date associée au statut métier"
* interpretation 0..1 CodeableConcept "Interprétation"
* auteur 0..1 Auteur "Auteur de l'observation"