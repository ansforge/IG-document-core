// StructureDefinition for legalAuthenticator
Profile: FrLegalAuthenticator
Parent: http://hl7.org/cda/stds/core/StructureDefinition/LegalAuthenticator
Id: fr-core-legal-authenticator
Title: "legalAuthenticator"
<<<<<<< HEAD
Description: "LegalAuthenticator représente les caractéristiques du professionnel et/ou de l'établissement participant."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* sdtcSignatureText 0..0 // Interdire l'élément sdtcSignatureText
=======
Description: "L'élément de l'en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l'établissement participant."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* sdtcSignatureText 0..0
>>>>>>> main
* time ^short = "Date et heure de la prise de responsabilité" 
* time.value ^short = "Date et heure de la prise de responsabilité précisée à la seconde avec précision du décalage par rapport au temps universel (UTC)"
* signatureCode ^short = "signatureCode confirme la prise la responsabilité du document."
* signatureCode.sdtcValueSet 0..0
* signatureCode.sdtcValueSetVersion 0..0
* assignedEntity only fr-core-assigned-entity // assignedEntity est de type fr-core-assigned-entity
* assignedEntity ^short = "Responsable du document"
* assignedEntity.code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS (required)