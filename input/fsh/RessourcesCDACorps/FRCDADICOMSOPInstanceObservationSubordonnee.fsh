Profile: FRCDADICOMSOPInstanceObservationSubordonnee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-sop-instance-observation-subordonnee
Title: "CDA - FR DICOM SOP instance observation subordonnee"
Description: "Entrée FR-DICOM-SOP-instance-observation-subordonnee: <p>DICOM Part 20 - SOP Instance Observation</p>
   <p>Cette entrée permet d'enregistrer l’url permettant d’accéder aux images sur la Drim box source.  </p>"
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomSopInstranceObservationSubordonnee 1..1
and dicomSOPInstanceObservation 1..1

* templateId[frDicomSopInstranceObservationSubordonnee] 1..1
* templateId[frDicomSopInstranceObservationSubordonnee].root = "1.2.250.1.213.1.1.3.169"
* templateId[frDicomSopInstranceObservationSubordonnee] ^short = "Conformité FR-DICOM-SOP-instrance-observation-subordonnee (CI-SIS)"
* templateId[dicomSOPInstanceObservation] 1..1
* templateId[dicomSOPInstanceObservation].root = "1.2.840.10008.9.18"
* templateId[dicomSOPInstanceObservation] ^short = "Conformité SOP Instance Observation (DICOM Part 20)"

* code MS
* code ^short = "<b>Classe SOP</b>
   <br clear='none'/> valeur issue du JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)."
* text MS
* text 0..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'observation"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
dummySlice1211 0..1



