Profile: FRCDAResultat
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-resultat
Title: "CDA - FR Resultat"
Description: "Entrée FR-Resultat: <ul>
      <li>
         <p>Cette entrée permet d'indiquer le résultat observé. </p>
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

* templateId contains frResultat 1..1
and iheSimpleObservation 1..1
and frSimpleObservation 1..1

* templateId[frResultat] 1..1
* templateId[frResultat].root = "1.2.250.1.213.1.1.3.209"
* templateId[frResultat] ^short = "Conformité FR-Resultat (CI-SIS)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"

* code MS
* code ^short = "<b>Code du résultat</b>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Observation effectuée"
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frCommentaireER 0..*


* targetSiteCode 0..1
* targetSiteCode ^short = "<b>Site de l'observation</b>"

