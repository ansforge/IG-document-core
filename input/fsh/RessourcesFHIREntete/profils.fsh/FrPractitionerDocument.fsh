// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner
Id: fr-practitioner-document
Title: "FrPractitionerDocument"
Description: "Ce profil représente les professionnels de santé."
* ^status = #draft 
* identifier 1..* 
* address 0..*
  * ^short = "Adresse"
* telecom 0..*
  * ^short = "Coordonnées télécom"
* name 1..1 
* name only fr-human-name-document

// slice : ProfessionSavoirFaireRôle
* qualification contains Profession-SavoirFaire-Rôle 0..1
* qualification[Profession-SavoirFaire-Rôle].code 1..1
* qualification[Profession-SavoirFaire-Rôle].code from $JDV_J01-XdsAuthorSpecialty-CISIS (required)
* qualification[Profession-SavoirFaire-Rôle].code ^short = "Profession / savoir-faire ou rôle"
