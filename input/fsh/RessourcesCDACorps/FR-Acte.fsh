Profile: FrActe
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Title: "FR Acte"
Description: """L'entrée 'Acte' est une entrée de type 'procedure' décrivant un acte planifié ou réalisé."""

* typeId 0..0
* nullFlavor 0..0
* realmCode 0..0
* moodCode ^short = "Si acte prévu :
  - moodCode='INT'
  - negationInd='false' (valeur par défaut)
  Si acte réalisé :
  - moodCode='EVN'
  - negationInd='true' si l'acte n'a pas eu lieu
  - negationInd='false' si l'acte a eu lieu (valeur par défaut)"
* classCode 1..1 
* classCode = #OBS
* moodCode 1..1 
* moodCode = #EVN
* negationInd 0..0

//* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

/*
* templateId.assigningAuthorityName 0..0
* templateId.displayable 0..0
* templateId.extension 0..0
* templateId.root 1..1
*/
* templateId contains frActeCISIS 1..1 and procedureEntryIHEPCC 1..1 and procedureActivityCCD 0..1 and planOfCareActivityCCD 0..1

* templateId[frActeCISIS].root = "1.2.250.1.213.1.1.3.62"
* templateId[frActeCISIS] ^short = "Conformité FR-Acte (CI-SIS)"
* templateId[frActeCISIS].assigningAuthorityName 0..0
* templateId[frActeCISIS].displayable 0..0
* templateId[frActeCISIS].extension 0..0
* templateId[frActeCISIS].nullFlavor 0..0

* templateId[procedureEntryIHEPCC].root = "1.3.6.1.4.1.19376.1.5.3.1.4.19"
* templateId[procedureEntryIHEPCC] ^short = "Conformité Procedure Entry (IHE PCC)"
* templateId[procedureEntryIHEPCC].assigningAuthorityName 0..0
* templateId[procedureEntryIHEPCC].displayable 0..0
* templateId[procedureEntryIHEPCC].extension 0..0
* templateId[procedureEntryIHEPCC].nullFlavor 0..0

* templateId[procedureActivityCCD].root = "2.16.840.1.113883.10.20.1.25"
* templateId[procedureActivityCCD] ^short = "Conformité Procedure activity (CCD) si acte réalisée"
* templateId[procedureActivityCCD].assigningAuthorityName 0..0
* templateId[procedureActivityCCD].displayable 0..0
* templateId[procedureActivityCCD].extension 0..0
* templateId[procedureActivityCCD].nullFlavor 0..0

* templateId[planOfCareActivityCCD].root = "2.16.840.1.113883.10.20.1.29"
* templateId[planOfCareActivityCCD] ^short = "Conformité Plan of care activity (CCD) si acte prévu"
* templateId[planOfCareActivityCCD].assigningAuthorityName 0..0
* templateId[planOfCareActivityCCD].displayable 0..0
* templateId[planOfCareActivityCCD].extension 0..0
* templateId[planOfCareActivityCCD].nullFlavor 0..0

* id 1..*
* id ^short = "Identifiant de l'entrée"
* code 1..1
* code ^short = "Code de l'acte. Aussi utilisé pour indiquer qu'il n'y a pas d'acte, ou qu'on ne sait pas s'il y en a.
 - Terminologie CCAM (1.2.250.1.215.300.1) si possible.
 - Si l'acte n'est pas trouvé dans la terminologie CCAM, utiliser le code='C25218' displayName='Intervention' codeSystem='2.16.840.1.113883.3.26.1.1' codeSystemName='NCIT' 
 et décrire l'acte sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante.
 - ou JDV_AbsentOrUnknownProcedure_CISIS (1.2.250.1.213.1.1.5.665) pour les actes chirurgicaux" 
* text 1..1
* text ^short = "Description narrative"
* statusCode 1..1
* statusCode ^short = "Statut de l'acte : utiliser le  JDV_HL7_ActStatus_CISIS (2.16.840.1.113883.1.11.15933)
 - Si l'acte a été réalisé : le statut prend la valeur 'completed'.
 - Si l'acte a été arrêté avant sa fin : le statut prend la valeur 'aborted'.
 - Si l'acte a été annulé avant sa réalisation : le statut prend la valeur 'cancelled'.
 - Si l'acte est en cours ou à venir : le statut prend la valeur 'active'."
 //* statusCode from jdv-hl7-v3-ActStatus-cisis 
* effectiveTime	^short = "Date de l'acte
 - Si l'acte a été réalisé : l'élément 'effectiveTime' indique la date de réalisation.
 - Si l'acte a été annulé (statusCode 'Cancelled') ou arrêté (statusCode 'aborted'), l'élément 'effectiveTime' peut garder sa valeur initiale si elle était renseignée.
 - Si l'acte est prévu : l'élément 'effectiveTime' indique la date de planification si elle est connue ou la prend la valeur nullflavor='UNK' si elle n'est pas connue."	
* priorityCode ^short = "Priorité : utiliser le JDV_HL7_ActPriority_CISIS (2.16.840.1.113883.1.11.16866) ou autre.
 - Obligatoire si acte prévu et la date non renseignée.
 - Facultatif si acte réalisé."	
  * originalText ^short = "Numéro séquentiel"
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
  * qualifier 0..0
  * translation	0..0
* languageCode	0..0	
* methodCode 0..0
* approachSiteCode ^short = "Voie d’abord. Non renseigné si la voie d'abord est contenue dans le code de l'acte (comme c'est le cas avec la CCAM)."
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
  * qualifier 0..1 
  * qualifier ^short = "Latéralité"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
* targetSiteCode ^short = "Localisation anatomique"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0 
  * qualifier 0..1 
  * qualifier ^short = "Précision topographique"
    * nullFlavor 0..0
    * inverted 0..0
    * name 1..1 
      * code = #106233006
      * codeSystem = "urn:oid:2.16.840.1.113883.6.96"
      * codeSystemName = "SNOMED CT"
      * displayName = "modificateur topographique"
      * nullFlavor 0..0
      * sdtcValueSet 0..0
      * sdtcValueSetVersion 0..0
      * originalText 0..0
      * qualifier 0..0
      * translation	0..0
    * value 1..1
    * value only CD
      //* code from  jdv-modificateur-topographique-cisis
* subject 0..0	
* specimen	0..0

* entryRelationship	0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains
    circonstances 0..* and
    motif 0..* and
    referenceDM 0..* and
    difficulte 0..1 and
    scores 0..*

* entryRelationship[circonstances] ^short = "Circonstances ayant décidé de l'acte"
* entryRelationship[motif] ^short = "Motif de l'acte"
* entryRelationship[referenceDM] ^short = "Réference interne à un DM"
* entryRelationship[difficulte] ^short = "Difficulté"
* entryRelationship[scores] ^short = "Scores"
/*
Modèles CDA des entrées à créer
* entryRelationship[circonstances] only FR-Reference-Interne
* entryRelationship[motif] only FR-Reference-Interne
* entryRelationship[referenceDM] only FR-Reference-Interne
* entryRelationship[difficulte] only FR-Simple-Observation
* entryRelationship[scores] only FR-Simple-Observation
*/
* reference	0..0		
* precondition	0..0		
* sdtcPrecondition2 0..0
* sdtcInFulfillmentOf1 0..0