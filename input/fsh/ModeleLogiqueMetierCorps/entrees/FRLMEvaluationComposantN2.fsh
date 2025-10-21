Logical: FRLMEvaluationComposantN2
Id: fr-lm-evaluation-composant-n2
Title: "Modèle logique métier - FR LM Evaluation Composant N2"
Description: """Entrée Evaluation Composant N2"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* codeEvaluation 1..1 CodeableConcept "Code de l'évaluation"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* statut = #completed
* horodatage 1..1 dateTime "Horodatage de l'entrée"
* resultat	1..1 CodeableConcept "Résultat de l'évaluation"
* interpretation 0..* CodeableConcept "Interprétation"
* commentaire 0..* FRLMCommentaireER "Commentaire"
