Logical: GroupDeQuestionnairesDevaluation	
//Id: fr-groupe-de-questionnaires-d-evaluation
Title: "Groupe de questionnaires d'évalutation"
Description: """Modèle logique métier de l'entrée Groupe de questionnaires d'évalutation"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* statut 1..1 code "Statut de l'entrée" 
* horodatage 1..1 dateTime "Horodatage de l'entrée"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* evaluation 1..* Evaluation "Évaluation"