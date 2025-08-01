Logical: DICOMExpositionPatient
//Id: fr-dicom-exposition-patient
Title: "DICOM Exposition patient"
Description: """Modèle logique métier de l'entrée DICOM Exposition patient"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* participant 1..1 ParticipantCorps "Participant"