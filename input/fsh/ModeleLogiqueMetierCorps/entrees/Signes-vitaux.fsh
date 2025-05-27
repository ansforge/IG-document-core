Logical: SigneVital	
//Id: fr-signe-vital
Title: "Signe vital"
Description: """Modèle logique métier de l'entrée Signe vital"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Élément observé"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date de l'entrée"
* auteur 0..* Auteur "Auteur"
* signeVital 1..* SigneVitalObserve "Signe vital observé"