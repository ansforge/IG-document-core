Logical: FrEvaluation	
Title: "Evaluation"
Description: """Entrée Evaluation"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* typeEvaluation 1..1 CodeableConcept "Code de l'entrée. Type d'évaluation"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date"
* interpretation 0..1 CodeableConcept "Interprétation"
* evaluateur 0..1 PersonneStructure "Evaluateur"
* auteurEvaluation 0..1 Auteur "Auteur de l'évaluation"
* responsableEvaluation 0..1 PersonneStructure "Responsable de l'évaluation"
* evaluationComposant 0..* FrEvaluationComposant "Composants de l'évaluation"
* statutEvaluation 0..1 FrStatut "Statut de l’évaluation"
* commentaire 0..* FrCommentaireER "Commentaire"
* referenceInterne 0..* FrReferenceInterne "Reference Interne"