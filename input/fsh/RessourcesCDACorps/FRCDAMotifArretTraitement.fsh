Profile: FRCDAMotifArretTraitement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-motif-arret-traitement
Title: "CDA - FR Motif arret traitement"
Description: "Entrée FR-Motif-arret-traitement: <ul>
      <li>
         <p>Cette observation permet d'indiquer le motif de l'arrêt du traitement auquel elle est associée.</p>
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
and frMotifArretTraitement 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frMotifArretTraitement] 1..1
* templateId[frMotifArretTraitement].root = "1.2.250.1.213.1.1.3.48.17"
* templateId[frMotifArretTraitement] ^short = "Conformité FR-Motif-arret-traitement (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #MED-052
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


