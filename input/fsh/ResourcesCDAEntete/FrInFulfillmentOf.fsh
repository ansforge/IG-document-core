// StructureDefinition for InFulfillmentOf
Profile: FrInFulfillmentOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/InFulfillmentOf
Id: fr-core-inFulfillment-of
Title: "CDA - inFulfillmentOf"
Description: "L'élément de l'en-tête du CDA inFulfillmentOf permet d'associer un document à une prescription." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* order only fr-core-order
* order ^short = "Prescription"