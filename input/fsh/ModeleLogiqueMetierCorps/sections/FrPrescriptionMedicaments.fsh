Logical: FrPrescriptionMedicaments
Parent: Section
Title: "Prescription de médicaments"
Description: """Section Prescription de médicaments"""
Characteristics: #can-be-target

* auteur 0..1 Auteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * traitementPrescrit 1..* FrTraitementPrescrit "Entrée Traitement prescrit"