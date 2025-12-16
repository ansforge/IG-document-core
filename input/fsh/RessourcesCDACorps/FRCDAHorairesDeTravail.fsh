Profile: FRCDAHorairesDeTravail
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-horaires-de-travail
Title: "CDA - FR Horaires de travail"
Description: "Entrée FR-Horaires-de-travail: <p>IHE-PCC - Work shift observation</p>
   <p>Cette entrée permet de décrire le type de journée de travail (travail de nuit, par rotation …).</p>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheWorkScheduleObservation 1..1
and frHorairesDeTravail 1..1

* templateId[iheWorkScheduleObservation] 1..1
* templateId[iheWorkScheduleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.20.7"
* templateId[iheWorkScheduleObservation] ^short = "Conformité Work Schedule Observation (IHE PCC)"
* templateId[frHorairesDeTravail] 1..1
* templateId[frHorairesDeTravail].root = "1.2.250.1.213.1.1.3.70"
* templateId[frHorairesDeTravail] ^short = "Conformité FR-Horaires-de-travail (CI-SIS)"

* code MS
* code ^short = "<b>Type de l'entrée</b>"
* code.code = #74159-5
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Type de journée de travail"
* value only CD

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frHorairesDeTravailHebdomadaire 0..1
 and frJoursDeTravailHebdomadaire 0..1



