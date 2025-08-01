Logical: DICOMSOPInstanceObservationSubordonnee
//Id: fr-dicom-sop-instance-observation-subordonnee
Title: "DICOM SOP Instance Observation Subordonnee"
Description: """Modèle logique métier de l'entrée DICOM SOP Instance Observation Subordonnee"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'observation"
* classeSOP 1..1 CodeableConcept "Classe SOP"
  * ^binding.description = "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)"
* description 0..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "status de l'observation"
* date 0..1 dateTime "Date de l'observation"
* objectifsReferences 0..1 DICOMObjectifsDeReference  "DICOM-Objectifs-de-reference"
* cadresReferences 0..1 DICOMCadresReferences "DICOM-Cadres-references"