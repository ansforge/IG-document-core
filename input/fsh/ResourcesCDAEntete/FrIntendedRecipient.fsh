// StructureDefinition for IntendedRecipient
Profile: FrIntendedRecipient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/IntendedRecipient
Id: fr-core-intended-recipient
<<<<<<< HEAD
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
=======
Title: "intendedRecipient"
Description: "L'élément de l'en-tête du CDA intendedRecipient permet d'enregistrer le destinataire prévu du document." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* classCode 0..0
* id ^short = "Identifiant du destinataire prévu."
* id.root = "1.2.250.1.71.4.2.1"
* id.root 1..1
* id.extension 1..1
* id.extension ^short = "Identifiant du destinataire prévu : Source pour les destinataires professionnels : valeur de PS_IdNat (voir annexe [6])"
* id.assigningAuthorityName 0..0
* id.displayable 0..0
* addr ^short = "Adresse géopostale du destinataire."
* telecom ^short = "Coordonnées télécom du destinataire."
* informationRecipient ^short = "Informations sur le destinataire prévu."
* informationRecipient only fr-core-person
* receivedOrganization ^short = "Structure destinataire prévue."
* receivedOrganization only fr-core-represented-organization
* receivedOrganization.id.root = "1.2.250.1.71.4.2.2"
* receivedOrganization.id.assigningAuthorityName 0..0
* receivedOrganization.id.displayable 0..0
>>>>>>> main
