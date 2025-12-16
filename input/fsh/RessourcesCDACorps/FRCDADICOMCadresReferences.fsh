Profile: FRCDADICOMCadresReferences
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-cadres-references
Title: "CDA - FR DICOM Cadres references"
Description: "Entrée FR-DICOM-Cadres-references: Une observation d’images référencées contient une liste de valeurs de type entiers pour les images référencées d’une instance SOP d’images."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains dummySlice3811 1..1

* templateId[dummySlice3811] 1..1
* templateId[dummySlice3811].root = "1.2.250.1.213.1.1.3.164"
* templateId[dummySlice3811] ^short = "Conformité FR-DICOM-Cadres-references (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>
   <br clear='none'/>"
* code.code = #121190
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frDicomSopInstranceObservationSubordonnee 1..1



