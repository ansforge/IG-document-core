Logical: TraitementDispense
//Id: fr-traitement-dispense
Title: "Traitement dispensé"
Description: """Modèle logique métier de l'entrée Traitement dispense"""
Characteristics: #can-be-target

* identifiant 1..1 identifier "Identifiant de l’entrée"
* code 0..1 CodeableConcept "Complétude de la dispensation"
* description 1..1 Narrative "Texte de l'entrée"
* quantite  1..1 Quantity "Quantité : Unité issue de EDQM Packaging"
* medicamentDelivre 1..1 ProduitSante "Médicament délivré"
* referencePrescription 0..1 ReferenceItemPrescription "Référence de la prescription"
* traitement 0..1 Traitement "Posologie"
* instructionsPatient 0..1 InstructionsPatient "Instructions au patient"
* notesDispensateur 0..1 NotesDispensateur "Notes du dispensateur"
* substitution 0..1 ActeSubstitution "Substitution"