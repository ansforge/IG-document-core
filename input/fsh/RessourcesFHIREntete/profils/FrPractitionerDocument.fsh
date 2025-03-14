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

// slice : ProfessionSavoirFaireRôle
* qualification contains professionSavoirFaireRole 0..1
* qualification[professionSavoirFaireRole].code.coding 1..1
* qualification[professionSavoirFaireRole].code.coding from $JDV_J01-XdsAuthorSpecialty-CISIS (required)
* qualification[professionSavoirFaireRole].code.coding ^short = "Profession / savoir-faire ou rôle"
