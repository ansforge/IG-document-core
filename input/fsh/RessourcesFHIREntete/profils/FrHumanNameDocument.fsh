// StructureDefinition for HumanNameDocument
Profile: HumanNameDocument
Parent: FRCoreHumanNameProfile
Id: fr-human-name-document
Title: "Human Name Document"
Description: "Ce profil représente le nom du professionnel de santé."
* family 1..1
* given 0..1
* prefix ^short = "Civilité"
* prefix from $JDV_J245-Civilite-CISIS (required)
* suffix 0..1
* suffix ^short = "Titre"
* suffix from $JDV_J246-Titre-CISIS (required)