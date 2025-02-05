// StructureDefinition Person
Profile: FrAssignedPerson
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Person
Id: fr-core-person
Title: "AssignedPerson"
Description: "AssignedPerson permet de décrire une personne physique"
* ^status = #draft
* nullFlavor 0..0
* classCode 0..0
* determinerCode 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* name ^short = "Identité de la personne physique responsable"
* name 1..1
* name only fr-core-name
* name.item.family ^short = "Nom de famille ou nom d’usage"
* name.item.family 1..1
* name.item.given ^short = "Prénom"
* name.item.given 0..1
* name.item.prefix ^short = "Civilité"
* name.item.prefix 0..1
* name.item.prefix from https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS
* name.item.suffix ^short = "Titre"
* name.item.suffix 0..1
* name.item.suffix from https://mos.esante.gouv.fr/NOS/JDV_J246-Titre-CISIS/FHIR/JDV-J246-Titre-CISIS
* sdtcDesc 0..0
* sdtcAsPatientRelationship	0..0
