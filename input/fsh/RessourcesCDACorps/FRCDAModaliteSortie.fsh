Profile: FRCDAModaliteSortie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-modalite-sortie
Title: "CDA - FR Modalite sortie"
Description: "Entrée FR-Modalite-sortie: <ul>
      <li>
         <p>Cette entrée permet de préciser la modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...).</p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frModaliteSortie 1..1

* templateId[frModaliteSortie] 1..1
* templateId[frModaliteSortie].root = "1.2.250.1.213.1.1.3.48.7"
* templateId[frModaliteSortie] ^short = "Conformité FR-Modalite-sortie (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #ORG-074
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la sortie"
* value MS
* value 1..1
* value ^short = "Modalité de sortie :JDV_ModaliteSortie_CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
* value only CE



