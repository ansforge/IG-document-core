/* Equivalents EHDSDosaging précisés en commentaires pour chaque donnée métier */
Logical: FRLMPrescriptionEntree
Id: fr-lm-prescription-entree
//Parent : EHDSDosaging
Title: "Modèle logique métier - FR LM Prescription"
Description: """Entrée Prescription """
Characteristics: #can-be-target

* identifiantPrescription 1..1 Identifier "Identifiant de la prescription"
//sequence
* nombreRenouvellements 0..1 Range "Nombre de renouvellements possibles"
//doseAndRate
* quantitePrescription 0..1 Quantity "Quantité" 
// Not used in EHDSDosaging model
* auteurPrescription 0..1 FRLMAuteur "Prescripteur"
// Not used in EHDSDosaging model
* dispensateurPrescription 0..* FRLMPersonneStructure "Dispensateur"
//additionalInstruction : CodeableConcept	
* instructionsAuDispensateur 0..1 FRLMInstructionsAuDispensateur "Instructions au dispensateur"
