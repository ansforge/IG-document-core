Profile: FRCDAHorairesDeTravailHebdomadaire
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-horaires-de-travail-hebdomadaire
Title: "CDA - FR Horaires de travail hebdomadaire"
Description: "Entrée FR-Horaires-de-travail-hebdomadaire: <p>IHE-PCC - Weekly work hours observation</p>
   <p>Cette entrée permet de renseigner les heures de travail habituelles par semaine d'une personne.</p>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheWeeklyWorkHoursObservation 1..1
and frHorairesDeTravailHebdomadaire 1..1

* templateId[iheWeeklyWorkHoursObservation] 1..1
* templateId[iheWeeklyWorkHoursObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.20.8"
* templateId[iheWeeklyWorkHoursObservation] ^short = "Conformité Weekly Work Hours Observation (IHE PCC)"
* templateId[frHorairesDeTravailHebdomadaire] 1..1
* templateId[frHorairesDeTravailHebdomadaire].root = "1.2.250.1.213.1.1.3.71"
* templateId[frHorairesDeTravailHebdomadaire] ^short = "Conformité FR-Horaires-de-travail-hebdomadaire (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #74161-1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Nombre d'heures de travail hebdomadaire"
* value only INT



