// StructureDefinition for AssociatedEntity
Profile: FrAssociatedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssociatedEntity
Id: fr-core-associated-entity
Title: "associatedEntity"
Description: "AssociatedEntity représente les caractéristiques du professionnel et/ou de l'établissement participant."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* sdtcIdentifiedBy 0..0
* associatedPerson only fr-core-person
* scopingOrganization only fr-core-represented-organization
