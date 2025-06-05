Logical: DICOMCadresAafficher
//Id: fr-dicom-cadres-a-afficher
Title: "DICOM Cadres à afficher"
Description: """Modèle logique métier de l'entrée DICOM Cadres à afficher"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* cadresReferences 1..1 Range "Cadres référencés"