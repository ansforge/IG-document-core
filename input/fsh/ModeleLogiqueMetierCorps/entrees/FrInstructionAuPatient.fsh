Logical: FrInstructionAuPatient
Title: "Instruction au patient"
Description: """Entrée Instruction au patient"""
Characteristics: #can-be-target


* identifiant 1..1 Identifier "Identifiant de l'observation"
* codeInstructionPatient 1..1 CodeableConcept "Code de l'observation"
* descriptionInstructionPatient 1..1 Narrative "Instruction au patient"
* statutInstructionPatient 1..1 code "Statut de l'observation"
* horodatageinstructionPatient 0..1 dateTime "Horodatage de l’entrée"
* valeurInstructionPatient 0..* CodeableConcept "Instruction au patient sous forme codée"