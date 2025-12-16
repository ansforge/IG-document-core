Profile: FRCDAModaliteEntree
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-modalite-entree
Title: "CDA - FR Modalite entree"
Description: "Entrée FR-Modalite-entree: <p>Cette entrée permet d'indiquer la modalité d'entrée d'un patient en ES (urgence, programmée, etc...).</p>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frModaliteEntree 1..1

* templateId[frModaliteEntree] 1..1
* templateId[frModaliteEntree].root = "1.2.250.1.213.1.1.3.48.6"
* templateId[frModaliteEntree] ^short = "Conformité FR-Modalite-entree (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>
   <br clear='none'/>"
* code.code = #ORG-070
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = " Description narrative de l'observation."

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'entrée"
* value MS
* value 1..1
* value ^short = "Modalité d'entrée"
* value only CE



