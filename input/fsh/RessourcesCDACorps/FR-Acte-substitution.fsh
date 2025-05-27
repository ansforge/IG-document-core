Profile: FrActeSubstitution
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Title: "FR Acte substitution"
Description: """Cette observation permet d'indiquer si le traitement a été substitué."""

* typeId 0..0
* nullFlavor 0..0
* realmCode 0..0
* classCode 1..1
* classCode = #ACT
* moodCode 1..1
* moodCode = #EVN
* negationInd 0..0

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId.nullFlavor 0..0
* templateId.assigningAuthorityName 0..0
* templateId.displayable 0..0
* templateId.extension 0..0
* templateId.root 1..1

* templateId contains frActeSubstitutionCISIS 1..1 and iheSubstitutionAct 1..1

* templateId[frActeSubstitutionCISIS].root = "1.2.250.1.213.1.1.3.206"
* templateId[frActeSubstitutionCISIS] ^short = "Conformité FR-Acte-substitution (CI-SIS)"

* templateId[iheSubstitutionAct].root = "1.3.6.1.4.1.19376.1.9.1.3.9.2"
* templateId[iheSubstitutionAct] ^short = "Conformité Substitution act (IHE PHARM DIS)"

* id 0..0
* code 1..1 MS
* code ^short = "Code de l'entrée" 
  * code = #G
  * codeSystem = "urn:oid:2.16.840.1.113883.5.1070"
  * codeSystemName = "HL7_substanceAdminSubstitution"
  * displayName = "Substitution autorisée par un produit générique"
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
  * originalText 0..0
  * qualifier 0..0
  * translation	0..0
* text 0..0
* statusCode 1..1 MS
* statusCode ^short = "Statut de l'entrée. Fixé à la valeur 'completed'."
  * code = #completed
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
* effectiveTime	0..0	
* priorityCode	0..0	
* languageCode	0..0	
* subject 0..0	
* specimen	0..0		
* performer 0..0			
* author 0..0		
* informant	0..0		
* participant 0..0 			
* entryRelationship	0..0		
* reference	0..0		
* precondition	0..0		
* sdtcPrecondition2 0..0
* sdtcInFulfillmentOf1 0..0