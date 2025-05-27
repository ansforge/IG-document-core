Logical: StatutFonctionnel
Parent: Section
//Id: fr-statut-fonctionnel
Title: "Statut fonctionnel"
Description: """Modèle logique métier de la section Statut fonctionnel"""
Characteristics: #can-be-target

* titreSection 1..1 
* auteur 0..* Auteur "Auteur"
* informateur 0..* Informateur "Informateur"
* groupeQuestionnairesEvaluation 0..* GroupDeQuestionnairesDevaluation "Groupe de questionnaires d'évalutation"