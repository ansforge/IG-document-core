Profile: FRCDARechercheDeMicroOrganismes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-recherche-de-micro-organismes
Title: "CDA - FR Recherche de micro organismes"
Description: "Entrée FR-Recherche-de-micro-organismes: <p>IHE PCC – Simple Observation </p>
   <ul>
      <li>
         <p>Cette entrée permet d'indiquer si une recherche de micro-organismes multirésistants ou émergents a été effectuée ou pas.</p>
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
and frRechercheDeMicroOrganismes 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frRechercheDeMicroOrganismes] 1..1
* templateId[frRechercheDeMicroOrganismes].root = "1.2.250.1.213.1.1.3.48.8"
* templateId[frRechercheDeMicroOrganismes] ^short = "Conformité FR- Recherche-de-micro-organismes (CI-SIS)"

* code MS
* code ^short = "<b>Code de l’entrée</b>"
* code.code = #MED-309
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur de l’observation"
* value only BL



