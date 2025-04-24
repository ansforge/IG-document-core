// StructureDefinition for HumanNameDocument
Profile: HumanNameDocument
Parent: FRCoreHumanNameProfile
Id: fr-human-name-document
Title: "Human Name Document"
Description: "Ce profil correspond au type de données HumanName utilisé dans le document."
* family 1..
* given 0..
* prefix ^short = "Civilité"
* prefix from $JDV_J245-Civilite-CISIS (required)
* suffix 0..1
* suffix ^short = "Titre"
* suffix from $JDV_J246-Titre-CISIS (required)