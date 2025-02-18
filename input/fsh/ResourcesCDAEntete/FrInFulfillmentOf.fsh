// StructureDefinition for InFulfillmentOf
Profile: FrInFulfillmentOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/InFulfillmentOf
Id: fr-core-inFulfillment-of
Title: "inFulfillmentOf"
<<<<<<< HEAD
Description: "​InFulfillmentOf permet d'Associer un document à une prescription." 
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
=======
Description: "L'élément de l'en-tête du CDA inFulfillmentOf permet d'associer un document à une prescription." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
>>>>>>> main
* order only fr-core-order
* order ^short = "Prescription"