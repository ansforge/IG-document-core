Logical: FRLMTraitementDispense
Id: fr-lm-traitement-dispense
Title: "Modèle logique métier - FR LM Traitement dispensé"
Description: """Entrée Traitement dispense"""
Characteristics: #can-be-target

* identifiant 1..1 identifier "Identifiant de l’entrée"
* code 0..1 CodeableConcept "Complétude de la dispensation"
* description 1..1 Narrative "Texte de l'entrée"
* quantite  1..1 Quantity "Quantité : Unité issue de EDQM Packaging"
* medicamentDelivre 1..1 FRLMProduitSante "Médicament délivré"
* referencePrescription 0..1 FRLMReferenceItemPrescription "Référence de la prescription"
* traitement 0..1 FRLMTraitement "Posologie"
* instructionsPatient 0..1 FRLMInstructionsPatient "Instructions au patient"
* notesDispensateur 0..1 FRLMNotesDispensateur "Notes du dispensateur"
* substitution 0..1 FRLMActeSubstitution "Substitution"
