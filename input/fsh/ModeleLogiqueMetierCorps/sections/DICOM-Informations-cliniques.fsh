Logical: DICOMInformationsCliniques
//Id: fr-dicom-informations-cliniques
Parent: Section
Title: "Informations cliniques"
Description: """Modèle logique métier de la section DICOM Informations cliniques"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 
  * demandeExamen 1..1 DICOMDemandeExamen "Sous-section DICOM Demande d'examen"
  * historiqueMedical 1..1 DICOMHistoriqueMedical "Sous-section DICOM Historique médical"
* entree 0..0 