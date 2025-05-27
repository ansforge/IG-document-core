Logical: DICOMHistoriqueMedical
//Id: fr-dicom-historique-medical
Parent: Section
Title: "Historique médical"
Description: """Modèle logique métier de la section DICOM Historique médical"""
Characteristics: #can-be-target

* titreSection 1..1 
* observationDICOM 1..* Base "Entrée DICOM Observation"