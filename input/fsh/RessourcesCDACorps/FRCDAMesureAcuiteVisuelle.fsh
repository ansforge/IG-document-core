Profile: FRCDAMesureAcuiteVisuelle
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-mesure-acuite-visuelle
Title: "CDA - FR Mesure acuite visuelle"
Description: "Entrée FR-Mesure-acuite-visuelle: <p>IHE EYE CARE GEE - Visual Acuity Measurement Observation</p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer une mesure de la rubrique Meilleure acuité visuelle corrigée.</p>
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

* templateId contains frMesureAcuiteVisuelle 1..1
and iheVisualAcuityMeasurementObservation 1..1

* templateId[frMesureAcuiteVisuelle] 1..1
* templateId[frMesureAcuiteVisuelle].root = "1.2.250.1.213.1.1.3.119"
* templateId[frMesureAcuiteVisuelle] ^short = "Déclaration de conformité FR-Mesure-acuite-visuelle"
* templateId[iheVisualAcuityMeasurementObservation] 1..1
* templateId[iheVisualAcuityMeasurementObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.6"
* templateId[iheVisualAcuityMeasurementObservation] ^short = "Déclaration de conformité Visual Acuity Measurement Observation (IHE EYE CARE GEE)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code MS
* code 1..1
* code ^short = "Code de l'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-de-mesure-acuite-visuelle-cisis

* text MS
* text 1..1
* text ^short = "Bloc narratif de l'observation."

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de la mesure"
* value MS
* value 1..1
* value ^short = "Valeur mesurée"
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frReferenceInterne 1..1


* targetSiteCode 1..1
* targetSiteCode ^short = "<b>Oeil concerné</b>"

