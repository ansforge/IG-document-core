// StructureDefinition for Custodian
Profile: FrCustodian
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Custodian
Id: fr-core-custodian
Title: "custodian"
Description: "L'élément de l'en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* assignedCustodian ^short = "Structure"
* assignedCustodian only fr-core-assigned-custodian