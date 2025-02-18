// StructureDefinition for OrganizationDocument
Profile: FrOrganizationDocument
Parent: Organization
Id: fr-Organization-document
Title: "FrOrganizationDocument"
Description: "Structure pour le compte de laquelle intervient le professionnel."
* ^status = #draft 
* active 0..0
* implicitRules 0..0
* identifier ^short = "Identifiant de la structure"
* identifier 0..* 
* name ^short = "Nom de la structure"
* name 0..1
* type 0..1
//* type from 