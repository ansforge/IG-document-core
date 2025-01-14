// StructureDefinition for DataEnterer
Profile: FrDataEnterer
Parent: http://hl7.org/cda/stds/core/StructureDefinition/DataEnterer
Id: fr-core-data-enterer
Title: "dataEnterer"
Description: "DataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du 
document." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* time 1..1 // rendre time obligatoire
* assignedEntity only fr-core-assigned-entity