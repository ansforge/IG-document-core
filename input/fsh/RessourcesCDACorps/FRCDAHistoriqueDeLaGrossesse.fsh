Profile: FRCDAHistoriqueDeLaGrossesse
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-historique-de-la-grossesse
Title: "CDA - FR Historique de la grossesse"
Description: "Entrée FR-Historique-de-la-grossesse: <p>IHE-PCC - Pregnancy History Organizer </p>
   <p>Cette entrée permet de regrouper les observations relatives à un épisode de grossesse.</p>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ihePregnancyHistoryOrganizer 1..1
and frHistoriqueDeLaGrossesse 1..1

* templateId[ihePregnancyHistoryOrganizer] 1..1
* templateId[ihePregnancyHistoryOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.5.1"
* templateId[ihePregnancyHistoryOrganizer] ^short = "Conformité Pregnancy History Organizer (IHE PCC)"
* templateId[frHistoriqueDeLaGrossesse] 1..1
* templateId[frHistoriqueDeLaGrossesse].root = "1.2.250.1.213.1.1.3.55"
* templateId[frHistoriqueDeLaGrossesse] ^short = "Conformité FR-Historique-de-la-grossesse (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #118185001
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED_CT"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Période de la grossesse"
* effectiveTime.low ^short = "Date de début de grossesse"
* effectiveTime.high ^short = "Date de fin de grossesse"


