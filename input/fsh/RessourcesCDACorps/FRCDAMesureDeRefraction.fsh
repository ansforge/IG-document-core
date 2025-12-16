Profile: FRCDAMesureDeRefraction
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-mesure-de-refraction
Title: "CDA - FR Mesure de refraction"
Description: "Entrée FR-Mesure-de-refraction: <p>IHE EYE CARE GEE - Refractive Measurement Observation</p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer une mesure de la rubrique Réfraction automatique.</p>
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

* templateId contains frMesureDeRefraction 1..1
and iheRefractiveMeasurementObservation 1..1

* templateId[frMesureDeRefraction] 1..1
* templateId[frMesureDeRefraction].root = "1.2.250.1.213.1.1.3.120"
* templateId[frMesureDeRefraction] ^short = "Déclaration de conformité FR-Mesure-de-refraction"
* templateId[iheRefractiveMeasurementObservation] 1..1
* templateId[iheRefractiveMeasurementObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.7"
* templateId[iheRefractiveMeasurementObservation] ^short = "Déclaration de conformité Refractive Measurement Observation (IHE EYE CARE GEE)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-de-mesure-de-refraction-cisis

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation."

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de la mesure. Si la date et l'heure sont inconnus, utiliser l'attribut nullFlavor='UNK'. "
* value MS
* value 1..1
* value ^short = "Valeur de la mesure."
* value only ANY


* targetSiteCode 1..1
* targetSiteCode ^short = "<b>Localisation</b>"

