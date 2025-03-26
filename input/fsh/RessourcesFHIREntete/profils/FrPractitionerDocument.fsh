// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: AsPractitionerProfile
Id: fr-practitioner-document
Title: "Fr Practitioner Document"
Description: "Ce profil représente les professionnels de santé."
* identifier 1..* 
* name 1..1
* name ^short = "Identité de la personne physique" 
* name only fr-human-name-document

// Savoir-faire / rôle
* qualification[savoirFaire].code.coding[savoirFaire] ^definition = " Savoir-faire / rôle"
* qualification[savoirFaire].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)