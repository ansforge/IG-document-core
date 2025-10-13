Logical: FrEvaluationComposant
Title: "Evaluation Composant"
Description: """Entrée Evaluation Composant"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* codeEvaluation 1..1 CodeableConcept "Code de l'évaluation"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* horodatage 1..1 dateTime "Horodatage de l'entrée"
* resultat	1..1 CodeableConcept "Résultat de l'évaluation"
* interpretation 0..1 CodeableConcept "Interprétation"
* composantEvaluation 0..* FrEvaluationComposantN2 "Sous-composant de l'évaluation"
* commentaire 0..* FrCommentaireER "Commentaire"