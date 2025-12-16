Profile: FRCDAPeriodeActiviteEnZoneDangeureuse
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-periode-activite-en-zone-dangeureuse
Title: "CDA - FR Periode activite en zone dangeureuse"
Description: "Entrée FR-Periode-activite-en-zone-dangeureuse: <p>Combat Zone Period IHE Quality </p>
   <ul>
      <li>
         <p>Cette entrée permet d’indiquer la ou les plage(s) de dates auxquelles une personne a travaillé dans une zone de combat ou de service dangereux, en tant que civile ou militaire. </p>
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

* templateId contains frPeriodeActiviteEnZoneDangeureuse 1..1
and iheCombatZonePeriodObservation 1..1

* templateId[frPeriodeActiviteEnZoneDangeureuse] 1..1
* templateId[frPeriodeActiviteEnZoneDangeureuse].root = "1.2.250.1.213.1.1.3.133"
* templateId[frPeriodeActiviteEnZoneDangeureuse] ^short = "Conformité FR-Periode-activite-en-zone-dangeureuse (CI-SIS)"
* templateId[iheCombatZonePeriodObservation] 1..1
* templateId[iheCombatZonePeriodObservation].root = "1.3.6.1.4.1.19376.1.7.3.1.4.24.22"
* templateId[iheCombatZonePeriodObservation] ^short = "Conformité Combat Zone Period Observation (IHE PCC)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #87511-2
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Valeur de l'entrée"
* value only ANY



