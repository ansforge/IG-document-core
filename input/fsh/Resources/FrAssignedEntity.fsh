// StructureDefinition for AssignedEntity
Profile: FrAssignedntity
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
* code.codeSystemVersion // Interdire l’attribut @codeSystemVersion dans code
* code.sdtcValueSet // Interdire l’attribut @sdtcValueSet dans code
* code.sdtcValueSetVersion // Interdire l’attribut @sdtcValueSetVersion dans code
* classCode 0..0 // Interdire l’attribut @classCode
* id 1..1 // Rendre l'id en 1..1 au lieu de 1..*
* sdtcIdentifiedBy 0..0 // Interdire l'élément sdtcIdentifiedBy
* sdtcPatient 0..0 // Interdire l'élément sdtcPatient