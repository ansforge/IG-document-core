// StructureDefinition for InformationRecipient
Profile: FrInformationRecipient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/InformationRecipient
Id: fr-core-information-recipient
Title: "informationRecipient"
Description: "InformationRecipient permet d'enregistrer une personne déclarée comme destinataire prévu du document." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* intendedRecipient only fr-core-intended-recipient