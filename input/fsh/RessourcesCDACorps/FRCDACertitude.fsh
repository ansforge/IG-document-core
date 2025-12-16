Profile: FRCDACertitude
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-certitude
Title: "CDA - FR Certitude"
Description: "Entrée FR-Certitude: <p>Cette entrée permet de fournir la certitude d'une observation (problème ou allergie/hypersensibilité). </p>
   <ul>
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
and frCertitude 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE-PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frCertitude] 1..1
* templateId[frCertitude].root = "1.2.250.1.213.1.1.3.171"
* templateId[frCertitude] ^short = "Conformité FR-Certitude (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #66455-7
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
* value ^short = "Valeur de l'observation issue duJDV jdv-hl7-condition-ver-status-cisis(2.16.840.1.113883.4.642.3.166)"
* value only CD



