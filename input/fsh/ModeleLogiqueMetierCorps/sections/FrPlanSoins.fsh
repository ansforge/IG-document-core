Logical: FrPlanSoins
Parent: Section
Title: "Plan de soins"
Description: """Section Plan de soins"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree
  * actes 0..* FrActe "Entrée Acte"
  * demandeExamenOuSuivi 0..* FrDemandeExamenOuSuivi "Entrée Demande d'examen ou de suivi"
  * traitement 0..* FrTraitement "Entrée Traitement"
  * vaccinRecommande 0..* FrVaccinRecommande "Entrée Vaccin recommandé"
  * rencontre 0..* FrRencontre "Entrée Rencontre"