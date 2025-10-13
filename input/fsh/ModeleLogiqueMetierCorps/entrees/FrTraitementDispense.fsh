Logical: FrTraitementDispense
Title: "Traitement dispensé"
Description: """Entrée Traitement dispense"""
Characteristics: #can-be-target

* identifiant 1..1 identifier "Identifiant de l’entrée"
* code 0..1 CodeableConcept "Complétude de la dispensation"
* description 1..1 Narrative "Texte de l'entrée"
* quantite  1..1 Quantity "Quantité : Unité issue de EDQM Packaging"
* medicamentDelivre 1..1 FrProduitSante "Médicament délivré"
* referencePrescription 0..1 FrReferenceItemPrescription "Référence de la prescription"
* traitement 0..1 FrTraitement "Posologie"
* instructionsPatient 0..1 FrInstructionsPatient "Instructions au patient"
* notesDispensateur 0..1 FrNotesDispensateur "Notes du dispensateur"
* substitution 0..1 FrActeSubstitution "Substitution"