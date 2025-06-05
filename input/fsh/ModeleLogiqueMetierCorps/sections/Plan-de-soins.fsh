Logical: PlanSoins
Parent: Section
//Id: fr-plan-soins
Title: "Plan de soins"
Description: """Modèle logique métier de la section Plan de soins"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree
  * actes 0..* Acte "Entrée Acte"
  * demandeExamenOuSuivi 0..* DemandeExamenOuSuivi "Entrée Demande d'examen ou de suivi"
  * traitement 0..* Traitement "Entrée Traitement"
  * vaccinRecommande 0..* VaccinRecommande "Entrée Vaccin recommandé"
  * rencontre 0..* Rencontre "Entrée Rencontre"