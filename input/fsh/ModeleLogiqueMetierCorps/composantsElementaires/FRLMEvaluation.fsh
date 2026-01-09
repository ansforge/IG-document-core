Logical: FRLMEvaluation	
Id: fr-lm-evaluation
Title: "Modèle logique métier - FR LM Evaluation"
Description: """Evaluation"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* typeEvaluation 1..1 CodeableConcept "Code de l'entrée. Type d'évaluation"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* date 1..1 dateTime "Date"
* interpretation 0..1 CodeableConcept "Interprétation"
* evaluateur 0..1 FRLMPersonneStructure "Evaluateur"
* auteurEvaluation 0..1 FRLMAuteur "Auteur de l'évaluation"
* responsableEvaluation 0..1 FRLMPersonneStructure "Responsable de l'évaluation"
* evaluationComposant 0..* FRLMEvaluationComposant "Composants de l'évaluation"
* statutEvaluation 0..1 FRLMStatut "Statut de l’évaluation"
* commentaire 0..* FRLMCommentaireER "Commentaire"
* referenceInterne 0..* FRLMReferenceInterne "Reference Interne"
