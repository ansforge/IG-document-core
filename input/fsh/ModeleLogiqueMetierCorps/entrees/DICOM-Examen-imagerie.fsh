Logical: DICOMExamenImagerie
//Id: fr-dicom-examen-imagerie
Title: "DICOM Examen Imagerie"
Description: """Modèle logique métier de l'entrée DICOM Examen Imagerie"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* codeActe 1..1 CodeableConcept "Code de l'acte"
* description 0..1 Narrative "Partie narrative de l'entrée"
* dateActe 0..1 dateTime "Date de l'acte" 
* serieImagerie 1..1 DICOMSerieImagerie "Serie-imagerie"