// StructureDefinition for Patient
Profile: FrPatientFHIRDocument
Parent: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient
Id: fr-patient-fhir-document
Title: "FrPatientFHIRDocument"
Description: "Ce profil représente  le patient concerné par le document."
* ^status = #draft 
* contact
  * name 1..1 
  * name only fr-human-name-document
  * address 0..1
// extension: relationship
  * relationship[RelationType] from $JDV_J11_RelationPatient_CISIS  (required)
  * relationship[Role] from FRCoreValueSetContactRole  (required)
* generalPractitioner only Reference(FrPractitionerDocument)

* name.family.extension contains QualifierExtension named qualifier-family 1..1
* name.given.extension contains QualifierExtension named qualifier-given 0..1

