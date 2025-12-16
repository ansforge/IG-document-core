Profile: FRCDAJoursDeTravailHebdomadaire
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-jours-de-travail-hebdomadaire
Title: "CDA - FR Jours de travail hebdomadaire"
Description: "Entrée FR-Jours-de-travail-hebdomadaire: <p>IHE-PCC - Weekly Work Days Observation</p>
   <ul>
      <li>
         <p>Cette entrée permet de renseigner le nombre de jours de travail par semaine d’une personne.</p>
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

* templateId contains iheWeeklyWorkDaysObservation 1..1
and frJoursDeTravailHebdomadaire 1..1

* templateId[iheWeeklyWorkDaysObservation] 1..1
* templateId[iheWeeklyWorkDaysObservation].root = "1.3.6.1.4.1.19376.1.7.3.1.4.24.7"
* templateId[iheWeeklyWorkDaysObservation] ^short = "Conformité Weekly Work Days Observation (IHE PCC)"
* templateId[frJoursDeTravailHebdomadaire] 1..1
* templateId[frJoursDeTravailHebdomadaire].root = "1.2.250.1.213.1.1.3.131"
* templateId[frJoursDeTravailHebdomadaire] ^short = "Conformité FR-Jours-de-travail- hebdomadaire (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #74160-3
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Nombre de jours de travail hebdomadaires"
* value only INT



