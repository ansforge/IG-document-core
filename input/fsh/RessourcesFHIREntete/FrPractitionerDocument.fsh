// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: Practitioner
Id: fr-practitioner-document
Title: "FrPractitionerDocument"
Description: "Auteur du document"
* ^status = #draft 
* identifier 1..* 
* qualification 0..1
  * code 1..1
  * code ^binding.strength = #required
  * code ^binding.valueSet = "https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS"
  * code ^short = "Profession / savoir-faire ou rôle"
* address 0..*
* telecom 0..*
* name 1..1 
* name only fr-human-name-document