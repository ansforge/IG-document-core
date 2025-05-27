Logical: NotesDispensateur
//Id: fr-notes-du-dispensateur
Title: "Notes du dispensateur"
Description: """Modèle logique métier de l'entrée Notes du dispensateur"""
Characteristics: #can-be-target

* identifiant 0..* identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Notes du dispensateur sous forme textuelle"
* statut 1..1 code "Statut de l'entrée"
* statut = #completed