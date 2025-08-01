Logical: DICOMObservation
//Id: fr-dicom-observation
Title: "DICOM Observation"
Description: """Modèle logique métier de l'entrée DICOM Observation"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1 CodeableConcept "Code de l'observation"
* description 0..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "status de l'observation"
* date 0..1 dateTime "Date de l'observation"
* valeur 0..1 DataType	"Valeur de l'observation"
* localisationAnatomique 0..1 CodeableConcept "Localisation anatomique" 
  * ^binding.description = "jdv-localisation-anatomique-cisis (1.2.250.1.213.1.1.5.694)"
  * precisionTopographique 0..* CodeableConcept "Précision topographique"
    * nom 1..1 CodeableConcept "name"
    * valeur 1..1 CodeableConcept "Valeur de la topographie"
* observation 0..* DICOMSOPInstanceObservation "DICOM-SOP-instance-observation"
* quantite 0..* DICOMQuantity "DICOM-Quantite"