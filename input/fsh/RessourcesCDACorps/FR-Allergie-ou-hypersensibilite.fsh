Profile: FrAllergieOuHypersensibilite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Title: "FR Allergie ou hypersensibilite"
Description: """Cette entrée permet de décrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie, en précisant :
 - Le type : allergie médicamenteuse, hypersensibilité non allergique alimentaire, etc.
 - La date de début et de fin
 - L'agent responsable : médicament, agent environnemental, …
 - Le statut clinique : Actif, Inactif, Résolu
 - La criticité : Bas, Elevé, Impossible à évaluer
 - La certitude : Confirmé, Non confirmé, Réfuté
 - La (les) réaction(s) observée(s) : urticaire, nausée, … et
 - La sévérité de la réaction : Potentiellement mortel, Elevé, Modéré, Bas, …
 - un commentaire sur la réaction
 - Cette entrée est basée sur l'entrée Problème (1.3.6.1.4.1.19376.1.5.3.1.4.5) qu'elle spécialise.."""

* typeId 0..0
* nullFlavor 0..0
* realmCode 0..0

* moodCode = #EVN
* classCode = #OBS

//* templateId 1..5
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains alertObservationCCD 1..1 and problemEntryIHEPCC 1..1 and allergiesAndIntolerancesEntryIHEPCC 1..1 
and problemObservationCCD 1..1 and frAllergieOuHypersensibiliteCISIS 1..1

* templateId[alertObservationCCD].root = "2.16.840.1.113883.10.20.1.18"
* templateId[alertObservationCCD] ^short = "Conformité Alert observation (CCD)"
* templateId[alertObservationCCD].assigningAuthorityName 0..0
* templateId[alertObservationCCD].displayable 0..0
* templateId[alertObservationCCD].extension 0..0
* templateId[alertObservationCCD].nullFlavor 0..0

* templateId[problemEntryIHEPCC].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[problemEntryIHEPCC] ^short = "Conformité Problem Entry (IHE PCC)"
* templateId[problemEntryIHEPCC].assigningAuthorityName 0..0
* templateId[problemEntryIHEPCC].displayable 0..0
* templateId[problemEntryIHEPCC].extension 0..0
* templateId[problemEntryIHEPCC].nullFlavor 0..0

* templateId[allergiesAndIntolerancesEntryIHEPCC].root = "1.3.6.1.4.1.19376.1.5.3.1.4.6"
* templateId[allergiesAndIntolerancesEntryIHEPCC] ^short = "Conformité Allergies And Intolerances Entry (IHE PCC)"
* templateId[allergiesAndIntolerancesEntryIHEPCC].assigningAuthorityName 0..0
* templateId[allergiesAndIntolerancesEntryIHEPCC].displayable 0..0
* templateId[allergiesAndIntolerancesEntryIHEPCC].extension 0..0
* templateId[allergiesAndIntolerancesEntryIHEPCC].nullFlavor 0..0

* templateId[problemObservationCCD].root = "2.16.840.1.113883.10.20.1.28"
* templateId[problemObservationCCD] ^short = "Conformité Problem observation (CCD)"
* templateId[problemObservationCCD].assigningAuthorityName 0..0
* templateId[problemObservationCCD].displayable 0..0
* templateId[problemObservationCCD].extension 0..0
* templateId[problemObservationCCD].nullFlavor 0..0

* templateId[frAllergieOuHypersensibiliteCISIS].root = "1.2.250.1.213.1.1.3.41"
* templateId[frAllergieOuHypersensibiliteCISIS] ^short = "Conformité FR-Allergie-ou-hypersensibilite (CI-SIS)"
* templateId[frAllergieOuHypersensibiliteCISIS].assigningAuthorityName 0..0
* templateId[frAllergieOuHypersensibiliteCISIS].displayable 0..0
* templateId[frAllergieOuHypersensibiliteCISIS].extension 0..0
* templateId[frAllergieOuHypersensibiliteCISIS].nullFlavor 0..0

* id 1..*
* id ^short = "Identifiant de l'entrée"
* code 1..1
* code ^short = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie . jdv-type-evenement-indesirable-previsible-cisis (1.2.250.1.213.1.1.5.794)" 
//* code.code from jdv-type-evenement-indesirable-previsible-cisis
* derivationExpr 0..0
* text 1..1
* text ^short = "Description narrative"
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
  * code = #completed
  * nullFlavor 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
* effectiveTime 1..1 
* effectiveTime	^short = "Date de début et de fin"
  * low 1..1 
  * nullFlavor 0..0
  * value 0..0
  * operator 0..0
  * center 0..0
  * width 0..0	
* priorityCode 0..0 
* languageCode	0..0
* repeatNumber 0..0
* value 1..1 
* value ^short = "L'élément <value> sera utilisé pour indiquer qu'il n'y a pas d'allergie/hypersensibilité ou que l'on ne sait pas à partir du jdv-absent-or-unknown-allergy-cisis (1.2.250.1.213.1.1.5.661). 
 - Type : CD"
* interpretationCode 0..0
* methodCode 0..0
* targetSiteCode 0..0
* subject 0..0	
* specimen	0..0		
* performer 0..0			
* author 0..0		
* informant	0..0

* participant 0..1 
* participant ^short = "Agent responsable"

* entryRelationship	0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains
    probleme 0..* and
    statutClinique 0..1 and
    criticite 0..1 and
    certitude 0..1

* entryRelationship[probleme] ^short = "Réaction observée"
* entryRelationship[statutClinique] ^short = "Statut clinique"
* entryRelationship[criticite] ^short = "Criticité"
* entryRelationship[certitude] ^short = "Certitude"

/*
// Modèles CDA des entrées à créer
* entryRelationship[circonstances] only FR-Probleme
* entryRelationship[motif] only  FR-Statut-du-probleme
* entryRelationship[referenceDM] only FR-Criticite
* entryRelationship[difficulte] only FR-Certitude
*/
* reference	0..0		
* precondition	0..0		
* sdtcPrecondition2 0..0
* sdtcInFulfillmentOf1 0..0
* referenceRange 0..0 