Profile: FRCDAEnRapportAvecALD
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-en-rapport-avec-ald
Title: "CDA - FR En rapport avec ALD"
Description: "Entrée FR-En-rapport-avec-ALD: <ul>
      <li>
         <p>Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec une ALD.</p>
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
and frEnRapportAvecALD 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frEnRapportAvecALD] 1..1
* templateId[frEnRapportAvecALD].root = "1.2.250.1.213.1.1.3.48.13"
* templateId[frEnRapportAvecALD] ^short = "Conformité FR-En-rapport-avec-ALD (CI-SIS)"

* code MS
* code ^short = "<b>Catégorie de l'entrée</b>"
* code.code = #MED-574
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l'entrée"
* value MS
* value 1..1
* value ^short = "Résultat de l'observationL'attribut @value pourra prendre l'une des deux valeurs suivantes :value='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)value='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)"
* value only BL



