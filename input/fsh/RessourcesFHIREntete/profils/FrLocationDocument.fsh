// StructureDefinition for LocationDocument
Profile: FrLocationDocument
Parent: FRCoreLocationProfile
Id: fr-location-document
Title: "Fr Location Document"
Description: "Ce profil représente la structure de prise en charge."

// Slicing : type 
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "coding.code"
* type.coding ^slicing.rules = #open
* type.coding ^short = "Structure de prise en charge : healthCareFacility"

* type.coding contains code 1..1
* type.coding[code] ^short = "Secteur d'activité"
* type.coding[code].code from $JDV_J02-XdsHealthcareFacilityTypeCode-CISIS (required)

* type.coding contains translation 0..1
* type.coding[translation] ^short = "Catégorie d'établissement"
* type.coding[translation].code from FRValueSetCategorieEtablissement (required)