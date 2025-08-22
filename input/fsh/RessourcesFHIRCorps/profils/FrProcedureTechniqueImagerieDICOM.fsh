Profile: FrProcedureTechniqueImagerieDICOM
Parent: Procedure
Id: Fr-procedure-technique-imagerie-DICOM
Title: "Procedure - Fr Procedure Technique Imagerie DICOM"
Description: "FrProcedureTechniqueImagerieDICOM permet d'enregistrer les différents paramètres de l’acquisition d’image :
acte d'imagerie, modalité d'acquisition, localisation anatomique / latéralité / topographie, d'autres paramètres de l'acte "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant"

* code 1..1 MS
* code ^short = "Code de l'acte d'imagerie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required)

* subject MS
* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] MS
* performed[x] ^short = "Date de l'acte"

* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method named modaliteAcquisition 1..* MS
* extension[modaliteAcquisition].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis

* bodySite 1..1 MS
* bodySite ^short = "Localisation anatomique"
* bodySite from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-localisation-anatomique-cisis

// Modificateurs topographiques
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named ModificateurTopographique 0..1 MS

// Contraindre le contenu de l'extension (BodyStructure obligatoire)
* extension[ModificateurTopographique].valueReference only Reference(BodyStructure)

* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer MS
* performer contains Participant 0..1
* performer[Participant].actor ^short = "Participant"
* performer[Participant].actor only Reference(FrPractitionerRoleDocument or Device)