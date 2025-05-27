Logical: FonctionsPhysiques
//Id: fr-fonctions-physiques
Parent: Section
Title: "Fonctions physiques"
Description: """Modèle logique métier de la section Fonctions physiques"""
Characteristics: #can-be-target

* groupeQuestionnairesEvaluation 0..* GroupDeQuestionnairesDevaluation "Groupe de questionnaires d'évalutation"
* evalutation 0..* Evaluation "Entrée Evalutation"