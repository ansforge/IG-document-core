Logical: DICOMCadresReferences
//Id: fr-dicom-cadres-references
Title: "DICOM Cadres references"
Description: """Modèle logique métier de l'entrée DICOM Cadres references"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* cadresAffiche  1..1 DICOMCadresAafficher "DICOM-Cadres-a-afficher"