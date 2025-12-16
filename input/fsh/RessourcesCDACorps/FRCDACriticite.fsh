Profile: FRCDACriticite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-criticite
Title: "CDA - FR Criticite"
Description: "Entrée FR-Criticite: <ul>
      <li>
         <p>Cette entrée permet de fournir la criticité d'une l’allergie ou hypersensibilité.</p>
      </li>
      <li>
         <p>Elle est utilisée exclusivement dans un lien entryRelationship grâce auquel elle est liée à l’élément qu’elle qualifie. </p>
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
and frCriticite 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité Simple Observation (CI-SIS)"
* templateId[frCriticite] 1..1
* templateId[frCriticite].root = "1.2.250.1.213.1.1.3.172"
* templateId[frCriticite] ^short = "Conformité FR-Criticite (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #82606-5
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur de l'observation"
* value only CD



