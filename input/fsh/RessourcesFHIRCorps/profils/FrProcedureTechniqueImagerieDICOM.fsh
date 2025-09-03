Profile: FrProcedureTechniqueImagerieDICOM
Parent: Procedure
Id: fr-procedure-technique-imagerie-dicom
Title: "Procedure - Fr Technique imagerie DICOM"
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
* subject only Reference(FrPatientINSDocument)
* subject ^short = "Patient concerné"

* performed[x] MS
* performed[x] ^short = "Date de l'acte"

* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method named modaliteAcquisition 1..* MS
* extension[modaliteAcquisition] ^short = "Modalité d'acquisition"
* extension[modaliteAcquisition].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis

// Modificateurs topographiques
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named ModificateurTopographique 0..1 MS
* extension[ModificateurTopographique] ^short = "Modificateurs topographiques"
// Contraindre le contenu de l'extension (BodyStructure obligatoire)
* extension[ModificateurTopographique].valueReference only Reference(BodyStructure)

* bodySite 1..1 MS
* bodySite ^short = "Localisation anatomique"
* bodySite from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-localisation-anatomique-cisis

* performer MS
* performer ^short = "Participant"
* performer.actor.extension contains
    FrActorExtension named Participant 0..1
* performer.actor.extension[Participant].extension[type].valueCode = #PART (exactly)
* performer.actor.extension[Participant].extension[reference].valueReference only Reference(FrPractitionerRoleDocument or Device)
* performer.actor.extension[Participant].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
