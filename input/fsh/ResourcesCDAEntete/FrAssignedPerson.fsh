// StructureDefinition Person
Profile: FrAssignedPerson
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Person
Id: fr-core-person
Title: "AssignedPerson"
Description: "AssignedPerson permet de décrire : une personne physique "
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* classCode 0..0
* determinerCode 0..0
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* name 1..1
* name only PN
* name.family 1..1
* name.given 0..1
* name.prefix 0..1
* name.nullFlavor 0..0
* name.use 0..0
* name.validTime 0..0
* name.prefix ^short = "Civilité : Valeur issue du JDV_J245-Civilite-CISIS (1.2.250.1.213.1.1.5.718)."
* name.suffix ^short = "Titre : Valeur issue du JDV_J246_Titre_CISIS (1.2.250.1.213.1.1.5.719)."
* sdtcDesc 0..0
* sdtcAsPatientRelationship	0..0
