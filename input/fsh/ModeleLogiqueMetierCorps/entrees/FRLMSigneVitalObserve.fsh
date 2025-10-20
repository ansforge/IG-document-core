Logical: FRLMSigneVitalObserve	
Id: fr-lm-signe-vital-observe
Title: "Modèle logique métier - FR LM Signe vital observé"
Description: """Entrée Signe vital observé"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Signe vital observé"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date de l'observation"
* observationEffectuee 1..1 Quantity "Observation effectuée"
* interpretation 0..1 CodeableConcept  "Interprétation"
* methodeUtilisee 0..1 CodeableConcept  "Méthode utilisée pour l'observation"
* siteObservation 0..1 CodeableConcept  "Site de l'observation"
* auteur 0..1 FRLMAuteur "Auteur"
