Profile: FRCDADICOMObjectifsDeReference
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-objectifs-de-reference
Title: "CDA - FR DICOM Objectifs de reference"
Description: "Entrée FR-DICOM-Objectifs-de-reference: <ul>
      <li>
         <p>Cette entrée permet d’enregistrer les objectifs de référence d’imagerie. </p>
      </li>
   </ul>"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains dummySlice5510 1..1

* templateId[dummySlice5510] 1..1
* templateId[dummySlice5510].root = "1.2.250.1.213.1.1.3.163"
* templateId[dummySlice5510] ^short = "Conformité FR-DICOM-Objectifs-de-reference (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* code.code = #ASSERTION
* code.codeSystem = "2.16.840.1.113883.5.4"
* code.codeSystemName = "actCode"

* value MS
* value 1..1
* value ^short = "Valeur de l'entrée"
* value only ANY



