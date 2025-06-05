Logical: InstructionsAuDispensateur
//Id: fr-instructions-Au-dispensateur
Title: "Instructions au dispensateur"
Description: """Modèle logique métier de l'entrée Instructions au dispensateur"""
Characteristics: #can-be-target


* identifiant 1..1 Identifier "Identifiant de l'entrée"
* codeInstructionsDispensateurt 1..1 CodeableConcept "Code de l'entrée."
* descriptionInstructionsDispensateur 1..1 Narrative "Instructions au dispensateur sous forme textuelle"
* statutInstructionsDispensateur 1..1 code "Statut de l'entrée"
