Logical: FrStatutFonctionnel
Parent: Section
Title: "Statut fonctionnel"
Description: """Section Statut fonctionnel"""
Characteristics: #can-be-target

* sousSection 0..0
* titreSection 1..1 
* auteur 0..* Auteur "Auteur"
* informateur 0..* Informateur "Informateur"
* entree
  * groupeQuestionnairesEvaluation 0..* FrGroupDeQuestionnairesDevaluation "Groupe de questionnaires d'évalutation"