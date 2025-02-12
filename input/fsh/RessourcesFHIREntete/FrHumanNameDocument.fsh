// StructureDefinition for OrganizationDocument
Profile: HumanNameDocument
Parent: HumanName
Id: fr-human-name-document
Title: "HumanNameDocument"
Description: "Nom du professionnel de santé."
* ^status = #draft 
* use 0..0
* text 0..0
* period 0..0
* family 1..1
* given 0..1
* prefix ^short = "Civilité"
* prefix from https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS
* suffix 0..1
* suffix ^short = "Titre"
* suffix from https://mos.esante.gouv.fr/NOS/JDV_J246-Titre-CISIS/FHIR/JDV-J246-Titre-CISIS
