// StructureDefinition for OrganizationDocument
Profile: FrOrganizationDocument
Parent: AsOrganizationProfile
Id: fr-organization-document
Title: "FrOrganizationDocument"
Description: "Ce profil représente la structure pour le compte de laquelle intervient le professionnel." 

* identifier ^short = "Identifiant de la structure
 - Obligatoire dans la structure chargée de la conservation du document(Composition.custodian 1..1)"

// slice : type
* type contains CadreExercice 0..1
* type[CadreExercice] from $JDV_J04-XdsPracticeSettingCode-CISIS (required)
* type[CadreExercice] ^short = "Cadre d'exercice"