Profile: FRCDASeverite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-severite
Title: "CDA - FR Severite"
Description: "Entrée FR-Severite: <p>IHE-PCC - Severity</p>
   <ul>
      <li>
         <p>Cette entrée permet de donner le niveau de sévérité d’un problème : bas, modéré, élevé, etc... </p>
      </li>
      <li>
         <p>Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSeverity 1..1
and ccdSeverityObservation 1..1
and frSeverite 1..1

* templateId[iheSeverity] 1..1
* templateId[iheSeverity].root = "1.3.6.1.4.1.19376.1.5.3.1.4.1"
* templateId[iheSeverity] ^short = "Conformité Severity (IHE PCC)"
* templateId[ccdSeverityObservation] 1..1
* templateId[ccdSeverityObservation].root = "2.16.840.1.113883.10.20.1.55"
* templateId[ccdSeverityObservation] ^short = "Conformité Severity observation (CCD)"
* templateId[frSeverite] 1..1
* templateId[frSeverite].root = "1.2.250.1.213.1.1.3.29"
* templateId[frSeverite] ^short = "Conformité FR-Severite (CI-SIS)"

* code MS
* code ^short = "<b>Code de l’entrée</b>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Niveau de sévérité :Valeur provenant de JDV_SeveriteObservation_CISIS (1.2.250.1.213.1.1.5.675)D’autres nomenclatures spécifiques peuvent cependant être utilisées."
* value only CD



