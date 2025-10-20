Logical: FRLMStatutFonctionnel
Id: fr-lm-statut-fonctionnel
Parent: Section
Title: "Modèle logique métier - FR LM Statut fonctionnel"
Description: """Section Statut fonctionnel"""
Characteristics: #can-be-target

* sousSection 0..0
* titreSection 1..1 
* auteur 0..* FRLMAuteur "Auteur"
* informateur 0..* FRLMInformateur "Informateur"
* entree
  * groupeQuestionnairesEvaluation 0..* FRLMGroupDeQuestionnairesDevaluation "Groupe de questionnaires d'évalutation"