Profile: FRCDAEnRapportAvecAccidentTravail
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-en-rapport-avec-accident-travail
Title: "CDA - FR En rapport avec accident travail"
Description: "Entrée FR-En-rapport-avec-accident-travail: <ul>
      <li>
         <p>Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec un accident du travail.</p>
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
and frEnRapportAvecAccidentTravail 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frEnRapportAvecAccidentTravail] 1..1
* templateId[frEnRapportAvecAccidentTravail].root = "1.2.250.1.213.1.1.3.48.14"
* templateId[frEnRapportAvecAccidentTravail] ^short = "Conformité FR-En-rapport-avec-accident-travail (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Catégorie de l'observation</b>
   </div>
   <div>En rapport avec un accident du travail ou une maladie professionnelle (GEN-180)</div>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l'entrée"
* value MS
* value 1..1
* value ^short = "Résultat de l'observationL'attribut @value pourra prendre l'une des deux valeurs suivantes :value='true' : le traitement est prescrit dans le cadre d'un accident du travailvalue='false' : le traitement n'est pas prescrit dans le cadre d'un accident du travail"
* value only BL



