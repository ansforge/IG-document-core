Profile: FRCDAImputabiliteEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-imputabilite-effet-indesirable
Title: "CDA - FR Imputabilite effet indesirable"
Description: "Entrée FR-Imputabilite-effet-indesirable: <ul>
      <li>
         <p>Cette entrée permet de préciser l'imputabilité d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie. </p>
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
* templateId[frResultat].root = "1.2.250.1.213.1.1.3.211"
* templateId[frResultat] ^short = "Conformité FR-Resultat (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #GEN-318
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"

* statusCode.code MS
* statusCode.code = #completed

* value MS
* value 1..1
* value ^short = "Niveau d'imputabilité"
* value only CD



