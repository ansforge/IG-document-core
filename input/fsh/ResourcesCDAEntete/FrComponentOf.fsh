// StructureDefinition for ComponentOf
Profile: FrComponentOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ComponentOf
Id: fr-core-component-of
Title: "componentOf"
Description: "componentOf permet d'associer le document à une prise en charge du patient/usager." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* encompassingEncounter only fr-core-encompassing-encounter	
* encompassingEncounter	 ^short = "Prise en charge"