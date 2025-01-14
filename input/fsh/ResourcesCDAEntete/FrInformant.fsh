// StructureDefinition for Informant
Profile: FrInformant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Informant
Id: fr-core-informant
Title: "informant"
Description: "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode

* assignedEntity only fr-core-assigned-entity // assignedEntity est de type fr-core-assigned-entity
* relatedEntity only fr-core-related-entity // relatedEntity est de type fr-core-related-entity
