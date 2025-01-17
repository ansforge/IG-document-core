// StructureDefinition for AssignedEntity
Profile: FrAssignedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedEntity
Id: fr-core-assigned-entity
Title: "assignedEntity"
Description: "AssignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* code.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans code
* code.codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans code
* code.sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans code
* code.sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans code
* classCode 0..0 // Interdire l’attribut @classCode
* id 1..1 // Rendre l'id en 1..1 au lieu de 1..*
* id.nullFlavor 0..0
* id.root 1..1
* id.root ^short = "- Pour un professionnel : '1.2.250.1.71.4.2.1'
- Pour le patient/usager : OID de l'autorité d'affectation de l'INS
- Pour un système de structure : '1.2.250.1.71.4.2.1' 
- Pour un SNR : OID de l'éditeur 
- Pour le DP : '1.2.250.1.71.4.2.1'"
* id.extension 1..1
* id.extension ^short = "Valeur de l’identifiant"
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* sdtcIdentifiedBy 0..0 // Interdire l'élément sdtcIdentifiedBy
* sdtcPatient 0..0 // Interdire l'élément sdtcPatient
* assignedPerson only fr-core-person
* representedOrganization only fr-core-represented-organization