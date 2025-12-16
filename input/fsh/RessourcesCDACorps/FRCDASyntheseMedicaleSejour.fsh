Profile: FRCDASyntheseMedicaleSejour
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-synthese-medicale-sejour
Title: "CDA - FR Synthese medicale sejour"
Description: "Entrée FR-Synthese-medicale-sejour: <ul>
      <li>
         <p>Cette entrée permet de fournir, sous forme textuelle, une synthèse médicale du séjour. </p>
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
and frSyntheseMedicaleSejour 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSyntheseMedicaleSejour] 1..1
* templateId[frSyntheseMedicaleSejour].root = "1.2.250.1.213.1.1.3.48.9"
* templateId[frSyntheseMedicaleSejour] ^short = "Conformité FR-Synthese-medicale-sejour (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #MED-142
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la synthèse médicale du séjour"
* value MS
* value 1..1
* value ^short = "Synthèse médicale du séjour (sous forme textuelle)"
* value only ST



