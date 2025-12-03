Logical: FRLMAntecedentsMedicaux 
Id: fr-lm-antecedents-medicaux
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Antécédents médicaux"
Description: """Section Antécédents médicaux"""
Characteristics: #can-be-target

* titreSection 1..1
* sousSection 0..0
* entree 1..*
  * problemes 1..* FRLMProbleme "Entrée Problème"