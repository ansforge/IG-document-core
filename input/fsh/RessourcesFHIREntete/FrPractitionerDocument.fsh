// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner
Id: fr-practitioner-document
Title: "FrPractitionerDocument"
Description: "Auteur du document"
* ^status = #draft 
* identifier 1..* 
* address 0..*
  * ^short = "Adresse"
* telecom 0..*
  * ^short = "Coordonnées télécom"
* name 1..1 
* name only fr-human-name-document

// Qualification
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code"
* qualification ^slicing.rules = #open

// slice : ProfessionSavoirFaireRôle
* qualification contains ProfessionSavoirFaireRôle 0..1
* qualification[ProfessionSavoirFaireRôle].code 1..1
* qualification[ProfessionSavoirFaireRôle].code from $JDV_J01-XdsAuthorSpecialty (required)
* qualification[ProfessionSavoirFaireRôle].code ^short = "Profession / savoir-faire ou rôle"
