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
  * code from $JDV_J01-XdsAuthorSpecialty
  * code ^short = "Profession / savoir-faire ou rôle"
* address 0..*
  * ^short = "Adresse"
* telecom 0..*
  * ^short = "Coordonnées télécom"
* name 1..1 
* name only fr-human-name-document