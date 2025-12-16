Profile: FRCDAEvolutionEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evolution-effet-indesirable
Title: "CDA - FR Evolution effet indesirable"
Description: "Entrée FR-Evolution-effet-indesirable: <ul>
      <li>
         <p>Cette entrée permet de préciser l'évolution d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie. </p>
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
* templateId[frResultat].root = "1.2.250.1.213.1.1.3.213"
* templateId[frResultat] ^short = "Conformité FR-Resultat (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #GEN-319
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Evolution"
* value only CD



