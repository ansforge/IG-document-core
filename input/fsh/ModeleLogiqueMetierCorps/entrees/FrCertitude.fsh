Logical: FrCertitude
Title: "Certitude"
Description: """Entrée Certitude"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1 CodeableConcept "Code de l'observation"
* statut 1..1 code "Statut de l'observation"
* date 1..1 dateTime "Date de l'observation"
* descriptionNarrative 1..1 Narrative "Description narrative de l'observation"
* valeur 1..1 CodeableConcept "Valeur de l'observation"