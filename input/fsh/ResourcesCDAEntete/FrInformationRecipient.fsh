// StructureDefinition for InformationRecipient
Profile: FrInformationRecipient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/InformationRecipient
Id: fr-core-information-recipient
Title: "CDA - informationRecipient"
Description: "L'élément de l'en-tête du CDA informationRecipient permet d'enregistrer une personne déclarée comme destinataire prévu du document." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* intendedRecipient ^short = "Destinataire prévu du document."
* intendedRecipient only fr-core-intended-recipient