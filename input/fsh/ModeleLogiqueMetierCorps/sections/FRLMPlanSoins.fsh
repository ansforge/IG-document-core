Logical: FRLMPlanSoins
Id: fr-lm-plan-soins
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Plan de soins"
Description: """Section Plan de soins"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree
  * actes 0..* FRLMActe "Entrée Acte"
  * demandeExamenOuSuivi 0..* FRLMDemandeExamenOuSuivi "Entrée Demande d'examen ou de suivi"
  * traitement 0..* FRLMTraitement "Entrée Traitement"
  * vaccinRecommande 0..* FRLMVaccinRecommande "Entrée Vaccin recommandé"
  * rencontre 0..* FRLMRencontre "Entrée Rencontre"