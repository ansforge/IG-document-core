Logical: FRLMSignesVitaux
Id: fr-lm-signes-vitaux
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Signes vitaux"
Description: """Section Signes vitaux"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * signesVitauxEntry 1..* FRLMSigneVital "Entrée Signes vitaux"