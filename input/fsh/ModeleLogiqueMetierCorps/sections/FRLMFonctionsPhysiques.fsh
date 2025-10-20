Logical: FRLMFonctionsPhysiques
Id: fr-lm-fonctions-physiques
Parent: Section
Title: "Modèle logique métier - FR LM Fonctions physiques"
Description: """Section Fonctions physiques"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 
  * groupeQuestionnairesEvaluation 0..* FRLMGroupDeQuestionnairesDevaluation "Groupe de questionnaires d'évalutation"
  * evalutation 0..* FRLMEvaluation "Entrée Evalutation"