Profile: FRCDAScoreDepressionGeriatrique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-score-depression-geriatrique
Title: "CDA - FR Score Depression Geriatrique"
Description: "Entrée FR-Score-Depression-Geriatrique: <p>IHE-PCC -  Geriatric Depression Score Observation </p>
   <ul>
      <li>
         <p>Cette entrée permet d'enregistrer le score de la dépression gériatrique.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdResultObservation 1..1
and iheSimpleObservation 1..1
and iheGeriatricDepressionScoreObservation 1..1
and frScoreDepressionGeriatrique 1..1

* templateId[ccdResultObservation] 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Result observation (CCD)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheGeriatricDepressionScoreObservation] 1..1
* templateId[iheGeriatricDepressionScoreObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.4"
* templateId[iheGeriatricDepressionScoreObservation] ^short = "Conformité Geriatric Depression Score Observation (IHE PCC)"
* templateId[frScoreDepressionGeriatrique] 1..1
* templateId[frScoreDepressionGeriatrique].root = "1.2.250.1.213.1.1.3.110"
* templateId[frScoreDepressionGeriatrique] ^short = "Conformité FR-Score-Depression-Geriatrique (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #48544-1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur de l'observation"
* value only INT

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frScoreDepressionGeriatrique 0..*



