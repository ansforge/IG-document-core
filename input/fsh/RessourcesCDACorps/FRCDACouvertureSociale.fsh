Profile: FRCDACouvertureSociale
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-couverture-sociale
Title: "CDA - FR Couverture sociale"
Description: "Entrée FR-Couverture-sociale: <p>IHE-PCC - Coverage <br/>
   </p>
   <ul>
      <li>
         <p>L'entrée Couverture sociale est une entrée de type \"act\" permettant de lister les organismes d'assurance maladie du patient. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheCoverageEntry 1..1
and ccdCoverageActivity 1..1
and frCouverturesSociales 1..1

* templateId[iheCoverageEntry] 1..1
* templateId[iheCoverageEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.17"
* templateId[iheCoverageEntry] ^short = "Conformité Coverage Entry (IHE PCC)"
* templateId[ccdCoverageActivity] 1..1
* templateId[ccdCoverageActivity].root = "2.16.840.1.113883.10.20.1.20"
* templateId[ccdCoverageActivity] ^short = "Conformité Coverage activity (CCD)"
* templateId[frCouverturesSociales] 1..1
* templateId[frCouverturesSociales].root = "1.2.250.1.213.1.1.3.61"
* templateId[frCouverturesSociales] ^short = "Conformité FR-Couvertures-sociales (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #48768-6
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frOrganismeAssuranceMaladie 1..*



