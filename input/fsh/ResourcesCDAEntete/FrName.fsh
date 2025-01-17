Logical: FrName
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PN
Id: fr-core-name
Title: "name"
Description: "Nom d'une personne physique"
* ^status = #draft
* item.delimiter 0..0
/* * item.family 1..1
* item.given 0..1
* item.prefix 0..1
* item.suffix 0..1 */
* item.xmlText 0..0
* nullFlavor 0..0
* use 0..0
* validTime 0..0