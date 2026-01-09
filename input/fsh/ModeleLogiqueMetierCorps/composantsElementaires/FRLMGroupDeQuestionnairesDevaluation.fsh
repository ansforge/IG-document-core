Logical: FRLMGroupDeQuestionnairesDevaluation	
Id: fr-lm-group-de-questionnaires-devaluation
Title: "Modèle logique métier - FR LM Groupe de questionnaires d'évalutation"
Description: """Groupe de questionnaires d'évalutation"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* statut 1..1 code "Statut de l'entrée" 
* horodatage 1..1 dateTime "Horodatage de l'entrée"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* evaluation 1..* FRLMEvaluation "Évaluation"
