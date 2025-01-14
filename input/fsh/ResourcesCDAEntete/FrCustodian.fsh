// StructureDefinition for Custodian
Profile: FrCustodian
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Custodian
Id: fr-core-custodian
Title: "custodian"
Description: "Structure chargée de la conservation du document."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* assignedCustodian only fr-core-assigned-custodian