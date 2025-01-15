// StructureDefinition for Authenticator
Profile: FrAuthenticator
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Authenticator
Id: fr-core-authenticator
Title: "authenticator"
Description: "Authenticator, professionnel (personne physique) attestant la validité du contenu du document."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* sdtcSignatureText 0..0 // Interdire l'élément sdtcSignatureText
* signatureCode ^short = "signatureCode signifie que le professionnel a validé les informations portées sur le document."
* signatureCode.sdtcValueSet 0..0
* signatureCode.sdtcValueSetVersion 0..0
* time ^short = "Date/heure de l'attestation de validité" 
* time.value ^short = "Date et heure à laquelle le PS atteste la validité des informations portées sur le document. Précisée à la seconde avec précision du décalage par rapport au temps universel (UTC)"
* assignedEntity only fr-core-assigned-entity // assignedEntity est de type fr-core-assigned-entity
* assignedEntity ^short = "Entité attestant la validité"