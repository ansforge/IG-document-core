// StructureDefinition for LocationDocument
Profile: FrLocationDocument
Parent: Location
Id: fr-location-document
Title: "FrLocationDocument"
Description: "Ce profil représente la structure de prise en charge."
// Slicing : type 
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.code"
* type ^slicing.rules = #open

// Secteur d'activité
* type contains SecteurActivite 1..1
* type[SecteurActivite] ^short = "Secteur d'activité"
* type[SecteurActivite].coding from $JDV_J02-XdsHealthcareFacilityTypeCode-CISIS (required)

// Catégorie d'établissement
* type contains CategorieEtablissement 0..1
* type[CategorieEtablissement] ^short = "Catégorie d'établissement"
* type[CategorieEtablissement].coding from FRValueSetCategorieEtablissement (required)
