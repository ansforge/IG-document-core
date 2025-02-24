// StructureDefinition for PractitionerRoleDocument
Profile: FrPractitionerRoleDocument
Parent: PractitionerRole
Id: fr-practitionerRole-document
Title: "FrPractitionerRoleDocument"
Description: "Auteur du document."
* ^status = #draft 
* code 0..1 
* code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS
* code ^short = "Rôle fonctionnel du professionnel de santé"
* identifier 0..0
* active 0..0
* period 0..0
* specialty 0..0
* location 0..0
* healthcareService 0..0
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0 
* availabilityExceptions 0..0
* practitioner only Reference(FrPractitionerDocument)
* organization only Reference(FrOrganizationDocument)