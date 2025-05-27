Logical: PrescriptionMedicaments
Parent: Section
//Id: fr-prescription-medicaments
Title: "Prescription de médicaments"
Description: """Modèle logique métier de la section Prescription de médicaments"""
Characteristics: #can-be-target

* auteur 0..1 Auteur "Auteur de la prescription"
* traitementPrescrit 1..* Base "Entrée Traitement prescrit"