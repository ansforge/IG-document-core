Profile: FRCDAStatutCliniqueDuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut-clinique-du-patient
Title: "CDA - FR Statut clinique du patient"
Description: "Entrée FR-Statut-clinique-du-patient: <p>IHE-PCC - Health-Status-Observation</p>
   <ul>
      <li>
         <p>L'entrée Statut clinique du patient permet de donner une évaluation de l'état clinique du patient.</p>
      </li>
      <li>
         <p>L'entrée Statut clinique du patient est un élément observation qui est inséré dans un autre élément à l'aide d'un lien entryRelationship. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdProblemHealthStatusObservation 1..1
and iheHealthStatusObservation 1..1
and frStatutCliniqueDuPatient 1..1

* templateId[ccdProblemHealthStatusObservation] 1..1
* templateId[ccdProblemHealthStatusObservation].root = "2.16.840.1.113883.10.20.1.51"
* templateId[ccdProblemHealthStatusObservation] ^short = "Conformité Problem healthstatus observation (CCD)"
* templateId[iheHealthStatusObservation] 1..1
* templateId[iheHealthStatusObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.1.2"
* templateId[iheHealthStatusObservation] ^short = "Conformité Health Status Observation (IHE PCC)"
* templateId[frStatutCliniqueDuPatient] 1..1
* templateId[frStatutCliniqueDuPatient].root = "1.2.250.1.213.1.1.3.31"
* templateId[frStatutCliniqueDuPatient] ^short = "Conformité FR-Statut-clinique-du-patient (CI-SIS)"

* code MS
* code ^short = "<b>Code de l’entrée</b>"
* code.code = #11323-3
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Statut clinique du patient"
* value only CE



