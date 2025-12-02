Logical: FRLMInstructionsAuDispensateur
Id: fr-lm-instructions-au-dispensateur
Title: "Modèle logique métier - FR LM Instructions au dispensateur"
Description: """Entrée Instructions au dispensateur"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* codeInstructionsDispensateurt 1..1 CodeableConcept "Code de l'entrée."
* descriptionInstructionsDispensateur 1..1 Narrative "Instructions au dispensateur sous forme textuelle"
* statutInstructionsDispensateur 1..1 code "Statut de l'entrée"
