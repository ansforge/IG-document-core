// StructureDefinition RelatedEntity
Profile: FrRelatedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RelatedEntity
Id: fr-core-related-entity
Title: "RelatedEntity"
Description: "RelatedEntity permet de décrire : un informateur non professionnel / personne de 
confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* telecom 1..* // rendre l'élément telecom obligatoire 1..* au lieu de 0..*
* relatedPerson 1..1 // rendre l'élément relatedPerson obligatoire 1..1 au lieu de 0..1
* relatedPerson only fr-core-person
* classCode from https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass
/* * classCode ^definition = """
  Valeurs possibles pour classCode:
  - NOK
  - CON
  - ECON
  - PAT
  - CAREGIVER
"""
* classCode ^short = "NOK, CON, ECON, PAT, CAREGIVER" */
* code from https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS
* code.code 1..1
* code.codeSystem 1..1
* code.displayName 1..1
* code.originalText 0..1
* code.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans code
* code.codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans code
* code.sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans code
* code.sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans code