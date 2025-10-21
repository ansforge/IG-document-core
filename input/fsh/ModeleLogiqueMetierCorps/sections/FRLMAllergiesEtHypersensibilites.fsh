Logical: FRLMAllergiesEtHypersensibilites 
Id: fr-lm-allergies-et-hypersensibilites
Parent : FRLMSection
Title: "Modèle logique métier - FR LM Allergies et hypersensibilités"
Description: """Section Allergies et hypersensibilités"""
Characteristics: #can-be-target

* titreSection 1..1 
* titreSection ^short = "Allergies et hypersensibilités"
* sousSection 0..0
* entree 1..*
  * allergieOuHypersensibilite 1..* FRLMAllergieOuHypersensibilite "Entrée Allergie ou Hypersensibilité"