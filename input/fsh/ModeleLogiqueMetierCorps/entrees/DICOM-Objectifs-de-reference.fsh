Logical: DICOMObjectifsDeReference
//Id: fr-dicom-objectifs-de-reference
Title: "DICOM Objectifs de reference"
Description: """Modèle logique métier de l'entrée DICOM Objectifs de reference"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* valeur 1..1 CodeableConcept "Valeur de l'entrée"
  * ^binding.description = "jdv-imagerie-objectif-reference-cisis (1.2.250.1.213.1.1.5.672)"