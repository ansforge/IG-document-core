Logical: FRLMInstructionsPatient
Id: fr-lm-instructions-patient
Title: "Modèle logique métier - FR LM Instructions au patient"
Description: """Entrée Instructions au patient"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* codeInstructionsPatient 1..1 CodeableConcept "Code de l'entrée"
* descriptionInstructionsPatient 1..1 Narrative "Instructions au patient"
* statutInstructionsPatient 1..1 code "Statut de l'entrée"
* instructionPatient 0..* FRLMInstructionAuPatient "Instruction au patient sous forme codée"
