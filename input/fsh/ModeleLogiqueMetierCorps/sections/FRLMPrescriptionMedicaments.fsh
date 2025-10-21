Logical: FRLMPrescriptionMedicaments
Id: fr-lm-prescription-medicaments
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Prescription de médicaments"
Description: """Section Prescription de médicaments"""
Characteristics: #can-be-target

* auteur 0..1 FRLMAuteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * traitementPrescrit 1..* FRLMTraitementPrescrit "Entrée Traitement prescrit"