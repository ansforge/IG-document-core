Logical: FRLMResultatsEntry
Id: fr-lm-resultats-entree
Title: "Modèle logique métier - FR LM Resultats"
Description: """Entrée Resultats"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Élément observé"
* statut 1..1 code "Statut de l'entrée" 
* date 0..1 dateTime "Date de l'entrée"
* executant 0..* FRLMLaboratoireExecutant "Exécutant"
* auteur 0..* FRLMAuteur "Auteur"
//FHIR : .result Reference(Observation)
// Créer un modèle métier pour l'entrée FR-Resultat ?
* resultat 1..* Base "Resultat"
