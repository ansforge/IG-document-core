Profile: FRCDAStatutDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut-document
Title: "CDA - FR Statut document"
Description: "Entrée FR-Statut-document: <ul>
      <li>
         <p>Cette entrée permet d'indiquer le statut du document (son état d'avancement dans le cycle de vie du document, depuis sa création jusqu'à sa validation définitive par son responsable légal (élément \"legalAuthenticator\" de l'en-tête) ainsi que la date de ce statut. </p>
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
and frStatutDocument 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité FR-Severite (CI-SIS)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frStatutDocument] 1..1
* templateId[frStatutDocument].root = "1.2.250.1.213.1.1.3.48.16"
* templateId[frStatutDocument] ^short = "Conformité FR-Statut-document (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #GEN-065
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date du statut du document"
* value MS
* value 1..1
* value ^short = "Statut du document Dans le cas où aucune réponse n'est disponible, la valeur nullFlavor='UNK' est autorisée. "
* value only CD



