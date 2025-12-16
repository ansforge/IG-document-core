Profile: FRCDAEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-effet-indesirable
Title: "CDA - FR Effet indesirable"
Description: "Entrée FR-Effet-indesirable: <ul>
      <li>
         <p>Cette entrée permet de décrire un effet indésirable prévisible lié à un médicament. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frEffetIndesirable 1..1
and ccdAlertObservation 1..1
and ccdProblemObservation 1..1
and iheProblemEntry 1..1

* templateId[frEffetIndesirable] 1..1
* templateId[frEffetIndesirable].root = "1.2.250.1.213.1.1.3.210"
* templateId[frEffetIndesirable] ^short = "Conformité FR-Effet-indesirable (CI-SIS)"
* templateId[ccdAlertObservation] 1..1
* templateId[ccdAlertObservation].root = "2.16.840.1.113883.10.20.1.18"
* templateId[ccdAlertObservation] ^short = "Conformité Alert observation (CCD)"
* templateId[ccdProblemObservation] 1..1
* templateId[ccdProblemObservation].root = "2.16.840.1.113883.10.20.1.28"
* templateId[ccdProblemObservation] ^short = "Conformité Problem observation (CCD)"
* templateId[iheProblemEntry] 1..1
* templateId[iheProblemEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[iheProblemEntry] ^short = "Conformité Problem Entry (IHE PCC)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <div>Type d'effet indésirable</div>"
* code MS
* code 1..1
* code ^short = "Code de l'entréeType d'effet indésirable"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis

* text MS
* text 1..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin de l'effet indésirable"
* value MS
* value 1..1
* value ^short = "non renseigné et fixé à value xsi:type='CD'"
* value only CD

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frTraitement 1..1
 and frProbleme 0..*
 and frResultat 0..1



