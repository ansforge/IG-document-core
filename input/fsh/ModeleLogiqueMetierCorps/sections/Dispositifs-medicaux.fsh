Logical: DispositifsMedicaux 
Parent: Section
//Id: fr-dispositifs-medicaux 
Title: "Dispositifs medicaux"
Description: """Modèle logique métier de la section Dispositifs medicaux"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* entree
  * dispositifsMedicaux  0..* DispositifMedical "Entrée Dispositif medical"