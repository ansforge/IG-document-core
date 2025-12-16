Profile: FRCDADICOMSerieImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-dicom-serie-imagerie
Title: "CDA - FR DICOM Serie imagerie"
Description: "Entrée FR-DICOM-Serie-imagerie: <p>DICOM Part 20 - Series Act</p>
   <p>Cette entrée contient les informations de la série générique utilisée pour porter l’entrée FR-DICOM-SOP-instance-observation.</p>"
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomSerieImagerie 1..1
and dicomSeriesAct 1..1

* templateId[frDicomSerieImagerie] 1..1
* templateId[frDicomSerieImagerie].root = "1.2.250.1.213.1.1.3.156"
* templateId[frDicomSerieImagerie] ^short = "Conformité FR-DICOM-Serie-imagerie (CI-SIS)"
* templateId[dicomSeriesAct] 1..1
* templateId[dicomSeriesAct].root = "1.2.840.10008.9.17"
* templateId[dicomSeriesAct] ^short = "Conformité Series Act (DICOM Part 20)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* code.code = #113015
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"

* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis

* text MS
* text 0..1
* text ^short = "Partie narrative de l'entrée"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de la série d'actes"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frDicomSOPInstranceObservation 1..1



