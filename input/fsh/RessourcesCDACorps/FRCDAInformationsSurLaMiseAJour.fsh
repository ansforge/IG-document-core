Profile: FRCDAInformationsSurLaMiseAJour
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-informations-sur-la-mise-a-jour
Title: "CDA - FR Informations sur la mise a jour"
Description: "Entrée FR-Informations-sur-la-mise-a-jour: <p>IHE-APSR - Update-Information-Organizer</p>
   <ul>
      <li>
         <p>Entrée à utiliser dans une section Conclusion – Diagnostic (1.3.6.1.4.1.19376.1.3.10.4.5) uniquement, dans le cas où une nouvelle version d'un rapport vient remplacer la précédente pour indiquer quelles sections et quelles entrées ont été modifiées par rapport à la version précédente. Elle permet également de fournir un indicateur général de l'importance clinique des
                            changements. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #BATTERY
* moodCode MS
* id 0..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheUpdateInformationOrganizer 1..1
and frInformationsSurLaMisAJour 1..1

* templateId[iheUpdateInformationOrganizer] 1..1
* templateId[iheUpdateInformationOrganizer].root = "1.3.6.1.4.1.19376.1.3.10.4.5"
* templateId[iheUpdateInformationOrganizer] ^short = "Conformité Update Information Organizer (IHE PALM)"
* templateId[frInformationsSurLaMisAJour] 1..1
* templateId[frInformationsSurLaMisAJour].root = "1.2.250.1.213.1.1.3.76"
* templateId[frInformationsSurLaMisAJour] ^short = "Conformité FR-Informations-sur-la-mise-a-jour (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/> (non utilisé)"
* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'entrée"


