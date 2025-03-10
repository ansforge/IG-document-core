// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: AsPractitionerProfile
Id: fr-practitioner-document
Title: "FrPractitionerDocument"
Description: "Ce profil représente les professionnels de santé."
* identifier 1..* 
* name 1..1
* name ^short = "Identité de la personne physique" 
* name only fr-human-name-document

// slice : ProfessionSavoirFaireRôle
* qualification contains Profession-SavoirFaire-Rôle 0..1
* qualification[Profession-SavoirFaire-Rôle].code 1..1
* qualification[Profession-SavoirFaire-Rôle].code from $JDV_J01-XdsAuthorSpecialty-CISIS (required)
* qualification[Profession-SavoirFaire-Rôle].code ^short = "Profession / savoir-faire ou rôle"
