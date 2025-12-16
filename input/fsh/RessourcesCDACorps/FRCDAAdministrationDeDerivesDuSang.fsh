Profile: FRCDAAdministrationDeDerivesDuSang
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-administration-de-derives-du-sang
Title: "CDA - FR Administration de derives du sang"
Description: "Entrée FR-Administration-de-derives-du-sang: <p>IHE-PCC - Simple-Observation </p>
   <ul>
      <li>
         <p>Cette entrée permet d'indiquer s'il y a eu ou pas une administration de dérivés du sang.</p>
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

* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frAdministrationDeDerivesDuSang 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frAdministrationDeDerivesDuSang] 1..1
* templateId[frAdministrationDeDerivesDuSang].root = "1.2.250.1.213.1.1.3.48.2"
* templateId[frAdministrationDeDerivesDuSang] ^short = "Conformité FR-Administration-de-derives-du-sang (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #MED-147
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Administration de dérivés du sang."
* value only BL



