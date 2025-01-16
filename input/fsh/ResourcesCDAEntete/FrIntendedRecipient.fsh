// StructureDefinition for IntendedRecipient
Profile: FrIntendedRecipient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/IntendedRecipient
Id: fr-core-intended-recipient
Title: "IntendedRecipient"
Description: "IntendedRecipient permet d'enregistrer le destinataire prévu du document." 
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* classCode 0..0  // Interdire l’attribut @classCode
* id.root = "1.2.250.1.71.4.2.1"
* id.root 1..1
* id.extension 1..1
* id.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans id
* id.displayable 0..0 // Interdire l’attribut @displayable dans id
* informationRecipient only fr-core-person
* receivedOrganization only fr-core-represented-organization
* receivedOrganization.id.root = "1.2.250.1.71.4.2.2"
* receivedOrganization.id.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans receivedOrganization/id
* receivedOrganization.id.displayable 0..0 // Interdire l’attribut @displayable dans receivedOrganization/id