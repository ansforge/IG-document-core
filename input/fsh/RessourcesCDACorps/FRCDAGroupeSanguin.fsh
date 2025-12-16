Profile: FRCDAGroupeSanguin
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-groupe-sanguin
Title: "CDA - FR Groupe sanguin"
Description: "Entrée FR-Groupe-sanguin: <p>IHE-PCC -  Blood-Type-Observation</p>
   <ul>
      <li>
         <p>L'entrée Groupe sanguin est une entrée de type observation qui permet d'apporter des informations complémentaires relatives à la détermination du Groupe Sanguin + Rhésus du patient.</p>
      </li>
   </ul>
   <ul>
      <li>
         <p>Cette entrée est basée sur l'élément Simple Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheBloodTypeObservation 1..1
and iheSimpleObservation 1..1
and ccdResultObservation 1..1
and frGroupeSanguin 1..1

* templateId[iheBloodTypeObservation] 1..1
* templateId[iheBloodTypeObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.6"
* templateId[iheBloodTypeObservation] ^short = "Conformité BloodTypeObservation (IHE PCC)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdResultObservation] 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Result observation (CCD)"
* templateId[frGroupeSanguin] 1..1
* templateId[frGroupeSanguin].root = "1.2.250.1.213.1.1.3.57"
* templateId[frGroupeSanguin] ^short = "Conformité FR-Groupe-sanguin (CI-SIS)"

* code MS
* code ^short = "<b>Signe vital observé</b>"
* code.code = #882-1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l'entrée"
* value MS
* value 1..1
* value ^short = "Groupe sanguin"
* value only CE



