// StructureDefinition for AuthoringDevice
Profile: FrAuthoringDevice
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AuthoringDevice
Id: fr-core-authoring-device
Title: "authoringDevice"
<<<<<<< HEAD
Description: "authoringDevice contient les informations complémentaires si l’auteur est un système."
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* classCode 0..0
* determinerCode 0..0
* manufacturerModelName 1..1
=======
Description: "L'élément de l'en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système."
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* classCode 0..0
* determinerCode 0..0
* manufacturerModelName ^short = "Nom du modèle du système."
* manufacturerModelName 1..1
* softwareName ^short = "Nom du système."
>>>>>>> main
* softwareName 1..1