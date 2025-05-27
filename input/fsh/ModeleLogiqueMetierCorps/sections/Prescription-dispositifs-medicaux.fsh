Logical: PrescriptionDispositifsMedicaux 
Parent: Section
//Id: fr-prescription-dispositifs-medicaux 
Title: "Prescription de dispositifs médicaux"
Description: """Modèle logique métier de la section Prescription de dispositifs médicaux"""
Characteristics: #can-be-target

* auteur 0..1 Auteur "Auteur de la prescription"
* dispositifMedical  1..* DispositifMedical "Entrée Dispositif médical prescrit"