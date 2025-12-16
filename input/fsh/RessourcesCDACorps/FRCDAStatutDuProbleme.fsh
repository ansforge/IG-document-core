Profile: FRCDAStatutDuProbleme
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut-du-probleme
Title: "CDA - FR Statut du probleme"
Description: "Entrée FR-Statut-du-probleme: <p>IHE-PCC - Problem-Status-Observation </p>
   <ul>
      <li>
         <p>L'élément \"Statut du problème\" est un élément de type \"observation\" qui permet de fournir le statut du problème ou de l'allergie. </p>
      </li>
      <li>
         <p>Il est utilisé exclusivement dans un lien \"entryRelationship\" grâce auquel il est lié à l'élément qu'il qualifie. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdStatusObservation 1..1
and ccdProblemStatusObservation 1..1
and iheProblemStatusObservation 1..1
and frStatutDuProbleme 1..1

* templateId[ccdStatusObservation] 1..1
* templateId[ccdStatusObservation].root = "2.16.840.1.113883.10.20.1.57"
* templateId[ccdStatusObservation] ^short = "Conformité Status observation (CCD)"
* templateId[ccdProblemStatusObservation] 1..1
* templateId[ccdProblemStatusObservation].root = "2.16.840.1.113883.10.20.1.50"
* templateId[ccdProblemStatusObservation] ^short = "Conformité Problem status observation (CCD)"
* templateId[iheProblemStatusObservation] 1..1
* templateId[iheProblemStatusObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.1.1"
* templateId[iheProblemStatusObservation] ^short = "Conformité Problem Status Observation (IHE PCC)"
* templateId[frStatutDuProbleme] 1..1
* templateId[frStatutDuProbleme].root = "1.2.250.1.213.1.1.3.30"
* templateId[frStatutDuProbleme] ^short = "Conformité FR-Statut-du-probleme (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #33999-4
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Valeur est issue du :JDV_HL7_ConditionClinical_CISIS (2.16.840.1.113883.4.642.3.164) si appelé par une entrée FR-ProblemeJDV_HL7_allergyintolerance-clinical_CISIS (2.16.840.1.113883.4.642.3.1372) si appelé par une entrée FR-Allergie-ou-intolerance"
* value only CE



