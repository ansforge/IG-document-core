Profile: FRCDANaissance
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-naissance
Title: "CDA - FR Naissance"
Description: "Entrée FR-Naissance: <p>IHE-PCC - Birth event organizer </p>
   <ul>
      <li>
         <p>Cette entrée rassemble les observations relatives à une naissance.</p>
      </li>
   </ul>
   <ul>
      <li>
         <p>Elle peut-être utilisée comme \"component\"; d'une entrée FR-Historique-de-la-grossesse (1.3.6.1.4.1.19376.1.5.3.1.4.13.5.1). </p>
      </li>
   </ul>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheBirthEventOrganizer 1..1
and frNaissance 1..1

* templateId[iheBirthEventOrganizer] 1..1
* templateId[iheBirthEventOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.5.2"
* templateId[iheBirthEventOrganizer] ^short = "Conformité Birth event organizer (IHE PCC)"
* templateId[frNaissance] 1..1
* templateId[frNaissance].root = "1.2.250.1.213.1.1.3.56"
* templateId[frNaissance] ^short = "Conformité FR-Naissance (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #118215003
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED_CT"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Période des observations Quand cette entrée est utilisée dans une entrée FR-Historique-de-la-grossesse, cette période doit correspondre à la période de la grossesse."


