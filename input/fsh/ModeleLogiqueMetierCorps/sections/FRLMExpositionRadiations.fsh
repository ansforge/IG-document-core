Logical: FRLMExpositionRadiations
Id: fr-lm-exposition-radiations
Parent: Section
Title: "Modèle logique métier - FR LM Exposition aux radiations"
Description: """Section Exposition aux radiations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* entree 
  * autorisationExposition 1..1 FRLMAutorisationExposition "Entrée autorisation à l'exposition aux rayonnements ionisants"
  * quantiteExposition 0..* FRLMQuantiteExposition "Entrée Quantité"