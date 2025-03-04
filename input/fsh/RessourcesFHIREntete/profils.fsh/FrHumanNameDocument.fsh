// StructureDefinition for OrganizationDocument
Profile: HumanNameDocument
Parent: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name
Id: fr-human-name-document
Title: "HumanNameDocument"
Description: "Ce profil représente le nom du professionnel de santé."
* ^status = #draft 
* use 0..0
* text 0..0
* period 0..0
* family 1..1
* given 0..1
* prefix ^short = "Civilité"
* prefix 0..1
* prefix from $JDV_J245-Civilite-CISIS (required)
* suffix 0..1
* suffix ^short = "Titre"
* suffix from $JDV_J246-Titre-CISIS (required)
