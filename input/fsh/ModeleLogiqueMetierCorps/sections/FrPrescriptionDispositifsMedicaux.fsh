Logical: FrPrescriptionDispositifsMedicaux 
Parent: Section
Title: "Prescription de dispositifs médicaux"
Description: """Section Prescription de dispositifs médicaux"""
Characteristics: #can-be-target

* auteur 0..1 Auteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * dispositifMedical  1..* FrDispositifMedicalEntry "Entrée Dispositif médical prescrit"