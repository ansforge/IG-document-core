Logical: DICOMSerieImagerie
//Id: fr-dicom-serie-imagerie
Title: "DICOM Serie imagerie"
Description: """Modèle logique métier de l'entrée DICOM Serie imagerie"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* description 0..1 Narrative "Partie narrative de l'entrée"
* date 0..1 dateTime "Date de la série d'actes" 
* serieImagerie 1..1 DICOMSOPInstanceObservation "DICOM SOP instance observation"