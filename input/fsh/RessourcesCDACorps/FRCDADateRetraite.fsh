Profile: FRCDADateRetraite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-date-retraite
Title: "CDA - FR Date retraite"
Description: "Entrée FR-Date-retraite: <p>IHE-PCC - Date of Retirement </p>
   <ul>
      <li>
         <p>Cette entrée permet d’indiquer si la personne se considère « retraitée » au moment où la déclaration est enregistré.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheDateOfRetirementObservation 1..1
and frDateRetraite 1..1

* templateId[iheDateOfRetirementObservation] 1..1
* templateId[iheDateOfRetirementObservation].root = "1.3.6.1.4.1.19376.1.7.3.1.4.24.21"
* templateId[iheDateOfRetirementObservation] ^short = "Conformité Date of Retirement Observation (IHE PCC)"
* templateId[frDateRetraite] 1..1
* templateId[frDateRetraite].root = "1.2.250.1.213.1.1.3.132"
* templateId[frDateRetraite] ^short = "Conformité FR-Date-retraite (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #87510-4
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Valeur de l'entrée"
* value only ANY



