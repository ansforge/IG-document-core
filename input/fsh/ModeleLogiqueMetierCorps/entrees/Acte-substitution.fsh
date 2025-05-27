Logical: ActeSubstitution
//Id: fr-acte-substitution
Title: "Acte substitution"
Description: """Modèle logique métier de l'entrée Acte substitution"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* statut 1..1 code "Statut de l'entrée"
* statut = #completed