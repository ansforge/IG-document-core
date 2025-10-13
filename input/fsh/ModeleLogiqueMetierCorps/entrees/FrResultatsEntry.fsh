Logical: FrResultatsEntry
Title: "Resultats"
Description: """Entrée Resultats"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Élément observé"
* statut 1..1 code "Statut de l'entrée" 
* date 0..1 dateTime "Date de l'entrée"
* executant 0..* LaboratoireExecutant "Exécutant"
* auteur 0..* Auteur "Auteur"
//FHIR : .result Reference(Observation)
// Créer un modèle métier pour l'entrée FR-Resultat ?
* resultat 1..* Base "Resultat"