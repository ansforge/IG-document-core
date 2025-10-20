Logical: FRLMPrescriptionDispositifsMedicaux 
Id: fr-lm-prescription-dispositifs-medicaux
Parent: Section
Title: "Modèle logique métier - FR LM Prescription de dispositifs médicaux"
Description: """Section Prescription de dispositifs médicaux"""
Characteristics: #can-be-target

* auteur 0..1 FRLMAuteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * dispositifMedical  1..* FRLMDispositifMedicalEntry "Entrée Dispositif médical prescrit"