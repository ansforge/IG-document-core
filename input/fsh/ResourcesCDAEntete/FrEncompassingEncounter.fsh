// StructureDefinition for encompassingEncounter
Profile: FrEncompassingEncounter 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/EncompassingEncounter
Id: fr-core-encompassing-encounter 
Title: "encompassingEncounter"
Description: "encompassingEncounter décrit la prise en charge du patient/usager par un professionnel ou par une structure." 
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* sdtcAdmissionReferralSourceCode 0..0 // Interdire l’attribut sdtcAdmissionReferralSourceCode
* classCode 0..0 // Interdire l’attribut classCode
* moodCode 0..0 // Interdire l’attribut moodCode
* id ^short = "Identifiant de la prise en charge"
* code ^short = "Type de prise en charge" 
* code from https://mos.esante.gouv.fr/NOS/JDV_J142-TypeRencontre-CISIS/FHIR/JDV-J142-TypeRencontre-CISIS
  * codeSystem 1..1
  * displayName 1..1
  * nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans code
  * codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans code
  * sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans code
  * sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans code
* effectiveTime  ^short = "Date de début et de fin de la prise en charge" 
* dischargeDispositionCode ^short = "Type sortie"
* responsibleParty ^short = "Responsable de la prise en charge"
* responsibleParty.nullFlavor 0..0
* responsibleParty.typeId 0..1
  * nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
  * assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
  * displayable 0..0 // Interdire l’attribut @displayable dans typeId
* encounterParticipant only fr-core-encounter-participant //encounterParticipant est de type fr-core-encounter-participant
* encounterParticipant ^short = "Personne impliquée dans la prise en charge"
* location  ^short = "Lieu de la prise en charge"
* location 1..1 // Rendre location obligatoire
* location.nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* location.typeCode 0..0
* location.typeId 0..1
  * nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
  * assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
  * displayable 0..0 // Interdire l’attribut @displayable dans typeId
* location.healthCareFacility only fr-core-health-care-facility