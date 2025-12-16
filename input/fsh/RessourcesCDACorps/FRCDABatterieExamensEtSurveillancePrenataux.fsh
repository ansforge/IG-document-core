Profile: FRCDABatterieExamensEtSurveillancePrenataux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-batterie-examens-et-surveillance-prenataux
Title: "CDA - FR Batterie Examens et surveillance prenataux"
Description: "Entrée FR-Batterie-Examens-et-surveillance-prenataux: <p>IHE-PCC - Antenatal Testing and Surveillance Battery</p>
   <ul>
      <li>
         <p>Cette entrée permet de lister les examens et surveillances prénataux.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #BATTERY
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheAntenatalTestingAndSurveillanceBattery 1..1
and frBatterieExamensEtSurveillancePrenataux 1..1

* templateId[iheAntenatalTestingAndSurveillanceBattery] 1..1
* templateId[iheAntenatalTestingAndSurveillanceBattery].root = "1.3.6.1.4.1.19376.1.5.3.1.1.21.3.10"
* templateId[iheAntenatalTestingAndSurveillanceBattery] ^short = "Conformité Antenatal Testing and Surveillance Battery (IHE PCC)"
* templateId[frBatterieExamensEtSurveillancePrenataux] 1..1
* templateId[frBatterieExamensEtSurveillancePrenataux].root = "1.2.250.1.213.1.1.3.98"
* templateId[frBatterieExamensEtSurveillancePrenataux] ^short = "Conformité FR-Batterie-Examens-et-surveillance-prenataux (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #XX-ANTENATALTESTINGBATTERY
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'examen ou de la surveillance"
* effectiveTime.low ^short = ""
* effectiveTime.high ^short = ""


