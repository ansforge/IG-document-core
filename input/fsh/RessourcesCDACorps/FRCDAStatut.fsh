Profile: FRCDAStatut
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut
Title: "CDA - FR Statut"
Description: "Entrée FR-Statut: <p> Cette entrée de type observation permet de décrire et de suivre le statut métier d’un objet. </p>"
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
and frStatut 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = " Conformité Simple observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frStatut] 1..1
* templateId[frStatut].root = "1.2.250.1.213.1.1.3.217"
* templateId[frStatut] ^short = "Conformité FR-Statut (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #106199-3
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date associée au statut métier"
* value MS
* value 1..1
* value ^short = "Statut métier"
* value only CD



