Logical: FRLMPrescriptionDispositifsMedicaux 
Id: fr-lm-prescription-dispositifs-medicaux
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Prescription de dispositifs médicaux"
Description: """Section Prescription de dispositifs médicaux"""
Characteristics: #can-be-target

* auteur 0..1 FRLMAuteur "Auteur de la prescription"
* sousSection 0..0
* entree 1..*
  * dispositifMedical  1..* FRLMDispositifMedicalEntree "Entrée Dispositif médical prescrit"