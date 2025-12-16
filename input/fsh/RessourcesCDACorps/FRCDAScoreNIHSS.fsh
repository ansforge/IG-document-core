Profile: FRCDAScoreNIHSS
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-score-nihss
Title: "CDA - FR Score NIHSS"
Description: "Entrée FR-Score-NIHSS: <ul>
      <li>
         <p>Entrée de type \"observation\" qui permet de décrire le score NIHSS sur l'échelle des accidents vasculaires cérébraux. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains dummySlice7982 1..1
and iheSimpleObservation 1..1
and ccdResultObservation 1..1

* templateId[dummySlice7982] 1..1
* templateId[dummySlice7982].root = "1.2.250.1.213.1.1.3.6"
* templateId[dummySlice7982] ^short = "Conformité FR-Score-NIHSS (CI-SIS)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdResultObservation] 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Simple Observation (CCD)"

* code MS
* code ^short = "<b>Code de l’entrée</b>"
* code.code = #72089-6
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l’observation"
* value MS
* value 1..1
* value ^short = "Score total NIHSS"
* value only INT

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
dummySlice7982 0..*



