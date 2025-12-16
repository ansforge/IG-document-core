Profile: FRCDAAntecedentsFamiliaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-antecedents-familiaux
Title: "CDA - FR Antecedents familiaux"
Description: "Entrée FR-Antecedents-familiaux: <p>IHE-PCC - Family History Organizer </p>
   <ul>
      <li>
         <p>L'entrée Antécédents familiaux est une entrée de type organizer qui permet de regrouper des informations relatives aux membres de la famille du patient.</p>
      </li>
   </ul>
   <ul>
      <li>
         <p>Les éléments ‘component' de cet organizer sont des entrées de type Family History Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13.3). </p>
      </li>
   </ul>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheFamilyHistoryOrganizer 1..1
and ccdFamilyHistoryOrganizer 1..1
and frFamilyHistoryOrganizer 1..1

* templateId[iheFamilyHistoryOrganizer] 1..1
* templateId[iheFamilyHistoryOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.15"
* templateId[iheFamilyHistoryOrganizer] ^short = "Conformité Family History Organizer (IHE PCC)"
* templateId[ccdFamilyHistoryOrganizer] 1..1
* templateId[ccdFamilyHistoryOrganizer].root = "2.16.840.1.113883.10.20.1.23"
* templateId[ccdFamilyHistoryOrganizer] ^short = "Conformité Family history organizer (CCD)"
* templateId[frFamilyHistoryOrganizer] 1..1
* templateId[frFamilyHistoryOrganizer].root = "1.2.250.1.213.1.1.3.59"
* templateId[frFamilyHistoryOrganizer] ^short = "Conformité FR-Antecedents-familiaux (CI-SIS)"

* code MS
* participant MS
* participant 0..*
* participant ^short = "Lien avec un autre sujet"



