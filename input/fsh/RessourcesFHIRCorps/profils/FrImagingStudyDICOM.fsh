Profile: FrImagingStudyDICOM
Parent: ImagingStudy
Id: fr-imaging-study-dicom
Title: "ImagingStudy - Fr Imaging study DICOM"
Description: "FrImagingStudyDICOM (DICOM Part 20 - Study Act) contient les informations DICOM d’un examen d’imagerie réalisé sur un patient.
L’examen est composé d'une ou de plusieurs séries d’images médicales."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Study Instance UUID"

* procedureCode 1..1 MS
* procedureCode ^short = "Code de l'acte"
* procedureCode.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* procedureCode.coding.code = #113014
* procedureCode.coding.display = "Examen"

* started MS
* started ^short = "Date de l'acte"

* series 1..1 MS
* series ^short = "Séries d'examen"

* series.modality MS
* series.modality ^short = "Modalité d'acquisition"
* series.modality from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis


* series.uid ^short = "DICOM Series Instance UID"

* series.started ^short = "Date de la série d'actes"

* series.instance 1..* MS
/* Créer une extension instance-role qui permet à FHIR de distinguer 
SOP parente du SOP subordonnée et faire un slicing sur instance  */
* series.instance ^slicing.discriminator.type = #value
* series.instance ^slicing.discriminator.path = "extension('http://.../StructureDefinition/instance-role')"
* series.instance ^slicing.rules = #open
* series.instance contains parent 1..1 and subordonnee 0..*

* series.instance[parent] ^short = "Url permettant d’accéder aux images sur la Drim box source"
* series.instance[parent].sopClass from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis (required)
* series.instance[parent].number ^short = "Cadres référencés"

* series.instance[subordonnee] ^short = "Url permettant d’accéder aux images sur la Drim box source"
* series.instance[subordonnee].sopClass from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis (required)
* series.instance[subordonnee].number ^short = "Cadres référencés"

* series.endpoint ^short = "Référence WADO"
* series.endpoint only Reference(FrEndpointWadoDICOM) // ==> Création du profil fsh FrEndpointWadoDICOM avec un parent Endpoint

//  Proposition 1 pour Objectifs de référence
* reasonReference 0..1 MS
* reasonReference ^short = "Objectifs de référence"
* reasonReference only Reference(FrObservationPurposeOfReferenceDICOM) 