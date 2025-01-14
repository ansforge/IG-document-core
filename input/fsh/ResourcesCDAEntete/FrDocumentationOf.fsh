// StructureDefinition for DocumentationOf
Profile: FrDocumentationOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/DocumentationOf
Id: fr-core-documentation-of
Title: "documentationOf"
Description: "DocumentationOf représente un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. 
Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une 
date de début et un exécutant." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* serviceEvent only fr-core-service-event
* serviceEvent ^short = "Évènement documenté"