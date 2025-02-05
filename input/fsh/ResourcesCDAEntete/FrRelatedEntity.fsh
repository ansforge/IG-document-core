// StructureDefinition RelatedEntity
Profile: FrRelatedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RelatedEntity
Id: fr-core-related-entity
Title: "RelatedEntity"
Description: "RelatedEntity permet de décrire : un informateur non professionnel / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* classCode ^short = "Rôle joué par la personne."
* code ^short = "Lien de la personne avec le patient/usager."
* code from https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS
* code.code 1..1
* code.codeSystem 1..1
* code.displayName 1..1
* code.originalText 0..1
* code.nullFlavor 0..0 
* code.codeSystemVersion 0..0 
* code.sdtcValueSet 0..0
* code.sdtcValueSetVersion 0..0
* addr ^short = "Adresse géopostale."
* telecom ^short = "Coordonnées télécom."
* telecom 1..* // rendre l'élément telecom obligatoire 1..* au lieu de 0..*
* relatedPerson ^short = "Personne physique."
* relatedPerson 1..1 // rendre l'élément relatedPerson obligatoire 1..1 au lieu de 0..1
* relatedPerson only fr-core-person