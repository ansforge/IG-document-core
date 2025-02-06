// StructureDefinition for ComponentOf
Profile: FrComponentOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ComponentOf
Id: fr-core-component-of
Title: "componentOf"
Description: "L'élément de l'en-tête du CDA componentOf permet d'associer le document à une prise en charge du patient/usager." 
* ^status = #draft
* nullFlavor 0..0
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* encompassingEncounter only fr-core-encompassing-encounter	
* encompassingEncounter	 ^short = "Prise en charge"