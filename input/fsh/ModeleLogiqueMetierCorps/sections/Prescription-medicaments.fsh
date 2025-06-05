Logical: PrescriptionMedicaments
Parent: Section
//Id: fr-prescription-medicaments
Title: "Prescription de médicaments"
Description: """Modèle logique métier de la section Prescription de médicaments"""
Characteristics: #can-be-target

* auteur 0..1 Auteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * traitementPrescrit 1..* TraitementPrescrit "Entrée Traitement prescrit"