// StructureDefinition Person
Profile: FrPerson
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Person
Id: fr-core-person
Title: "Person"
Description: "Person permet de décrire : une personne physique "
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* classCode 0..0
* determinerCode 0..0
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
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
//* name.item 0..0
* name.validTime 0..0
* name.prefix ^short = "Civilité : Valeur issue du JDV_J245-Civilite-CISIS (1.2.250.1.213.1.1.5.718)."
* sdtcDesc 0..0
* sdtcAsPatientRelationship	0..0
