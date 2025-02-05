// StructureDefinition for Authorization
Profile: FrAuthorization
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Authorization
Id: fr-core-authorization
Title: "authorization"
Description: "Authorization, permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni."
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* consent ^short = "Consentement"
* consent.id ^short = "Identifiant du consentement"
* consent.code ^short = "Type de consentement"
* consent.code 1..1
* consent.statusCode.code ^short = "Valeur fixée à 'completed' car on enregistre que les consentements obtenus"
* consent.statusCode.sdtcValueSet 0..0
* consent.statusCode.sdtcValueSetVersion 0..0