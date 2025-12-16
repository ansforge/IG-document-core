Profile: FRCDAActeSubstitution
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-acte-substitution
Title: "CDA - FR Acte substitution"
Description: "Entrée FR-Acte-substitution: <p>IHE PHARM DIS - Substitution act</p>
   <ul>
      <li>
         <p>Cette observation permet d'indiquer si le traitement a été substitué. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frActeSubstitution 1..1
and iheSubstitutionAct 1..1

* templateId[frActeSubstitution] 1..1
* templateId[frActeSubstitution].root = "1.2.250.1.213.1.1.3.206"
* templateId[frActeSubstitution] ^short = "Conformité FR-Acte-substitution (CI-SIS)"
* templateId[iheSubstitutionAct] 1..1
* templateId[iheSubstitutionAct].root = "1.3.6.1.4.1.19376.1.9.1.3.9.2"
* templateId[iheSubstitutionAct] ^short = "Conformité Substitution act (IHE PHARM DIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #G
* code.codeSystem = "2.16.840.1.113883.5.1070"
* code.codeSystemName = "HL7_SubstanceAdminSubstitution"

* statusCode.code MS
* statusCode.code = #completed



