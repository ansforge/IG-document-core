Profile: FRCDADICOMSOPInstanceObservation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-sop-instance-observation
Title: "CDA - FR DICOM SOP instance observation"
Description: "Entrée FR-DICOM-SOP-instance-observation: <p>DICOM Part 20 - SOP Instance Observation</p>
   <p>Cette entrée permet d'enregistrer l’url permettant d’accéder aux images sur la Drim box source. </p>"
* classCode MS
* classCode = #DGIMG
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomSOPInstranceObservation 1..1
and dicomSOPInstanceObservation 1..1

* templateId[frDicomSOPInstranceObservation] 1..1
* templateId[frDicomSOPInstranceObservation].root = "1.2.250.1.213.1.1.3.157"
* templateId[frDicomSOPInstranceObservation] ^short = "Conformité FR-DICOM-SOP-instrance-observation (CI-SIS) "
* templateId[dicomSOPInstanceObservation] 1..1
* templateId[dicomSOPInstanceObservation].root = "1.2.840.10008.9.18"
* templateId[dicomSOPInstanceObservation] ^short = "Conformité SOP Instance Observation (DICOM Part 20) "

* code MS
* code ^short = "<b>Classe SOP</b>
   <br clear='none'/> valeur issue du JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)."
* code MS
* code 1..1
* code ^short = "Classe SOP valeur issue du JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)."
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis

* text MS
* text 0..1
* text ^short = " url permettant d’accéder aux images sur la Drim box source Cette url, basée sur le profil IHE Invoke Image Display , est construite de la manière suivante :https://<location>/IHEInvokeImageDisplay?requestType=STUDY&amp;studyUID=<StudyInstanceUID>&amp;Accessionnumber=<Accessionnumber>&amp;idCDA=<idCDA> avec les paramètres :<location> : Racine de l’URL par laquelle on accède au PACS qui met à disposition de l’examen (cf volet CI-SIS_SPEC_TECH_Objet ref d'examens d'imagerie)<StudyInstanceUID> : Identifiant de l’examen attribué par le RIS<Accessionnumber> : Identifiant de la demande attribué par le RIS (concaténer root.extension)<idCDA> : Identifiant du document CDA IMG-CR-IMG (élément <id root>)"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'observation"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frDicomSopInstranceObservationSubordonnee 0..*
 and dummySlice9494 0..1



