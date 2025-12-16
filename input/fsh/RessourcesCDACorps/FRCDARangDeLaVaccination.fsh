Profile: FRCDARangDeLaVaccination
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-rang-de-la-vaccination
Title: "CDA - FR Rang de la vaccination"
Description: "Entrée FR-Rang-de-la-vaccination: <p>CDA -  Medication series number observation</p>
   <ul>
      <li>
         <p>Cette entrée permet de préciser le rang de la vaccination dans une série d'injections vaccinantes. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 0..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdMedicationSeriesNumberObservation 1..1
and frRangDeLaVaccination 1..1

* templateId[ccdMedicationSeriesNumberObservation] 1..1
* templateId[ccdMedicationSeriesNumberObservation].root = "2.16.840.1.113883.10.20.1.46"
* templateId[ccdMedicationSeriesNumberObservation] ^short = "Conformité Medication series number observation (CCD)"
* templateId[frRangDeLaVaccination] 1..1
* templateId[frRangDeLaVaccination].root = "1.2.250.1.213.1.1.3.82"
* templateId[frRangDeLaVaccination] ^short = "Conformité FR-Rang-de-la-vaccination (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* code.code = #30973-2
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 0..1
* text ^short = "Partie narrative de l’entrée"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l’observation"
* value MS
* value 1..1
* value ^short = "Rang de la vaccination"
* value only INT



