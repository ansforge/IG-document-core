Logical: FRLMSigneVital	
Id: fr-lm-signe-vital
Title: "Modèle logique métier - FR LM Signe vital"
Description: """Signe vital"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Élément observé"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date de l'entrée"
* auteur 0..* FRLMAuteur "Auteur"
* signeVital 1..* FRLMSigneVitalObserve "Signe vital observé"
