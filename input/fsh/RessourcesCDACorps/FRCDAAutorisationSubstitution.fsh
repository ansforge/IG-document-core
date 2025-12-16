Profile: FRCDAAutorisationSubstitution
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-autorisation-substitution
Title: "CDA - FR Autorisation Substitution"
Description: "Entrée FR-Autorisation-Substitution: <p>IHE-PRE - Substitution-Permission</p>
   <ul>
      <li>
         <p>Cette observation permet d'indiquer si le traitement auquel elle est associée peut être substitué.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSubstitutionPermission 1..1
and frAutorisationSubstitution 1..1

* templateId[iheSubstitutionPermission] 1..1
* templateId[iheSubstitutionPermission].root = "1.3.6.1.4.1.19376.1.9.1.3.9.1"
* templateId[iheSubstitutionPermission] ^short = "Conformité Substitution-Permission (IHE PHARM)"
* templateId[frAutorisationSubstitution] 1..1
* templateId[frAutorisationSubstitution].root = "1.2.250.1.213.1.1.3.87"
* templateId[frAutorisationSubstitution] ^short = "Conformité FR-Autorisation-Substitution (CI-SIS)"

* code MS
* code ^short = "<b>Type de substitution autorisé</b> entre le traitement prescrit et le traitement dispensé. <br clear='none'/>"
* statusCode.code MS
* statusCode.code = #completed



