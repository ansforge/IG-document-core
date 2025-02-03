// StructureDefinition for healthCareFacility
Profile: FrHealthCareFacility 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/HealthCareFacility
Id: fr-core-health-care-facility 
Title: "healthCareFacility"
Description: "healthCareFacility représente la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.)." 
* ^status = #draft
* classCode 0..0 //Interdire l’attribut @classCode
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* id 0..0 //Interdire l’attribut id
* sdtcIdentifiedBy 0..0 //Interdire l’attribut sdtcIdentifiedBy
* code 1..1 // Rendre le code obligatoire
* code ^short = "Secteur d'activité : Valeur issue du JDV_J02_XdsHealthcareFacilityTypeCode_CISIS (1.2.250.1.213.1.1.5.466)."
* code from https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS
  * code 1..1 
  * codeSystem 1..1
  * displayName 1..1
  * nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans code
  * codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans code
  * sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans code
  * sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans code
  * translation ^short = "Catégorie d'établissement"
  * translation 0..1
    * nullFlavor 0..0
    * code 1..1
    * codeSystem 1..1
    * displayName 1..1
    * codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans code
    * sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans code
    * sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans code
* location ^short = "Localisation de la structure"