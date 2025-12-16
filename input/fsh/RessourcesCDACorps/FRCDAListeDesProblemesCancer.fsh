Profile: FRCDAListeDesProblemesCancer
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-liste-des-problemes-cancer
Title: "CDA - FR Liste des problemes cancer"
Description: "Entrée FR-Liste-des-problemes-cancer: <ul>
      <li>
         <p>Cette entrée permet de regrouper les entrées FR-Diagnostic-du-cancer.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..5
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdProblemAct 1..1
and iheConcernEntry 1..1
and iheProblemConcern 1..1
and frListeDesProblemes 1..1
and frListeDesProblemesCancer 1..1

* templateId[ccdProblemAct] 1..1
* templateId[ccdProblemAct].root = "2.16.840.1.113883.10.20.1.27"
* templateId[ccdProblemAct] ^short = "Conformité Problem Act (CCD)"
* templateId[iheConcernEntry] 1..1
* templateId[iheConcernEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.1"
* templateId[iheConcernEntry] ^short = "Conformité Concern Entry (IHE PCC)"
* templateId[iheProblemConcern] 1..1
* templateId[iheProblemConcern].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.2"
* templateId[iheProblemConcern] ^short = "Conformité Problem Concern (IHE PCC)"
* templateId[frListeDesProblemes] 1..1
* templateId[frListeDesProblemes].root = "1.2.250.1.213.1.1.3.39"
* templateId[frListeDesProblemes] ^short = "Conformité FR-Liste-des-problemes (CI-SIS)"
* templateId[frListeDesProblemesCancer] 1..1
* templateId[frListeDesProblemesCancer].root = "1.2.250.1.213.1.1.3.39.1"
* templateId[frListeDesProblemesCancer] ^short = "Conformité FR-Liste-des-problemes-cancer (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <div>Valeur fixée à nullFlavor='NA'</div>"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin du problème"
* effectiveTime.low ^short = "Date du début"
* effectiveTime.high ^short = "Date de fin"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frDiagnosticDuCancer 1..*



