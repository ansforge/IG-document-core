// StructureDefinition for OrganizationDocument
Profile: FrOrganizationDocument
Parent: https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization
Id: fr-organization-document
Title: "FrOrganizationDocument"
Description: "Ce profil représente la structure pour le compte de laquelle intervient le professionnel."
* ^status = #draft 
* identifier 0..* 
* identifier ^short = "Identifiant de la structure
 - Obligatoire dans la structure chargée de la conservation du document(Composition.custodian 1..1)"
* type 0..1
* type ^short = "Cadre d'exercice"
* type from $JDV_J04-XdsPracticeSettingCode-CISIS (required)