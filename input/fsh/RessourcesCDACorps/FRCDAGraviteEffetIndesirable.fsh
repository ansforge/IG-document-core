Profile: FRCDAGraviteEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-gravite-effet-indesirable
Title: "CDA - FR Gravite effet indesirable"
Description: "Entrée FR-Gravite-effet-indesirable: <ul>
      <li>
         <p>Cette entrée permet de préciser la gravité d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien \"entryRelationship\" grâce auquel il est lié à l’élément qu’il qualifie. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frResultat 1..1

* templateId[frResultat] 1..1
* templateId[frResultat].root = "1.2.250.1.213.1.1.3.212"
* templateId[frResultat] ^short = "Conformité FR-Gravite-effet-indesirable (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #94030-4
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Niveau de gravité"
* value only CD



