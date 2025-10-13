Logical: FrPrescriptionEntry
//Parent : EHDSDosaging
Title: "Prescription"
Description: """Entrée Prescription """
Characteristics: #can-be-target

* identifiantPrescription 1..1 Identifier "Identifiant de la prescription"
//sequence
* nombreRenouvellements 0..1 Range "Nombre de renouvellements possibles"
//doseAndRate
* quantitePrescription 0..1 Quantity "Quantité" 
// Not used in EHDSDosaging model
* auteurPrescription 0..1 Auteur "Prescripteur"
// Not used in EHDSDosaging model
* dispensateurPrescription 0..* PersonneStructure "Dispensateur"
//additionalInstruction : CodeableConcept	
* instructionsAuDispensateur 0..1 FrInstructionsAuDispensateur "Instructions au dispensateur"