Logical: DICOMHistoriqueMedical
//Id: fr-dicom-historique-medical
Parent: Section
Title: "Historique médical"
Description: """Modèle logique métier de la section DICOM Historique médical"""
Characteristics: #can-be-target

* sousSection 0..0 
* titreSection 1..1 
* entree 1..*
  * observationDICOM 1..* DICOMObservation "Entrée DICOM Observation"