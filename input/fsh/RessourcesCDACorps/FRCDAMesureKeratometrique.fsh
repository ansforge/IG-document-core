Profile: FRCDAMesureKeratometrique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-mesure-keratometrique
Title: "CDA - FR Mesure keratometrique"
Description: "Entrée FR-Mesure-keratometrique: <p>IHE GEE - Observation de kératométrie ou <br/>IHE GEE - Observation des mesures de kératométrie </p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer une mesure Keratometrique.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frMesurekeratometrique 1..1
and ihekeratometryMeasurementObservation 1..1

* templateId[frMesurekeratometrique] 1..1
* templateId[frMesurekeratometrique].root = "1.2.250.1.213.1.1.3.121"
* templateId[frMesurekeratometrique] ^short = "Déclaration de conformité FR-Mesure-keratometrique"
* templateId[ihekeratometryMeasurementObservation] 1..1
* templateId[ihekeratometryMeasurementObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.8"
* templateId[ihekeratometryMeasurementObservation] ^short = "Déclaration de conformité keratometry measurement observation (IHE EYE CARE)"

* code MS
* code ^short = "Code provenant du <b> JDV_TypeDeMesureDeRefraction_CISIS (1.2.250.1.213.1.1.5.641)</b>"
* code MS
* code 1..1
* code ^short = " Code provenant du  JDV_TypeDeMesureDeRefraction_CISIS (1.2.250.1.213.1.1.5.641)"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-de-mesure-de-refraction-cisis

* text MS
* text 1..1
* text ^short = " Description narrative de l'observation."

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = " Date et heure de la mesure"
* value MS
* value 1..1
* value ^short = " Valeur de la mesure"
* value only PQ


* targetSiteCode 1..1
* targetSiteCode ^short = "<b>Localisation</b>"

