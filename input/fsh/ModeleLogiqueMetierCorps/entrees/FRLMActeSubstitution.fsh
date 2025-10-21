Logical: FRLMActeSubstitution
Id: fr-lm-acte-substitution
Title: "Modèle logique métier - FR LM Acte substitution"
Description: """Entrée Acte substitution"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* statut 1..1 code "Statut de l'entrée"
* statut = #completed
