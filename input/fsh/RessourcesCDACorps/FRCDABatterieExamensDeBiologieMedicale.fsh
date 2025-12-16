Profile: FRCDABatterieExamensDeBiologieMedicale
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-batterie-examens-de-biologie-medicale
Title: "CDA - FR Batterie examens de biologie medicale"
Description: "Entrée FR-Batterie-examens-de-biologie-medicale: <p>IHE-PCC - Laboratory Battery Organizer</p>
   <ul>
      <li>
         <p>L'entrée Batterie d'examens de biologie médicale est une entrée de type 'organizer' qui permet de décrire des examens de biologie médicale comprenant un ou plusieurs éléments porteurs de résultats et d'éventuels commentaires interprétant cet ensemble de résultats.</p>
      </li>
      <li>
         <p>L'examen de biologie médicale peut préciser des participants qui lui sont propres (validateur, auteur, responsable, laboratoire sous-traitant, automate …) et peut aussi décrire son échantillon biologique. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #BATTERY
* moodCode MS
* id 0..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheLaboratoryBatteryOrganizer 1..1
and frBatterieExamensDeBiologieMedicale 1..1

* templateId[iheLaboratoryBatteryOrganizer] 1..1
* templateId[iheLaboratoryBatteryOrganizer].root = "1.3.6.1.4.1.19376.1.3.1.4"
* templateId[iheLaboratoryBatteryOrganizer] ^short = "Conformité Laboratory Battery Organizer (IHE PaLM)"
* templateId[frBatterieExamensDeBiologieMedicale] 1..1
* templateId[frBatterieExamensDeBiologieMedicale].root = "1.2.250.1.213.1.1.3.78"
* templateId[frBatterieExamensDeBiologieMedicale] ^short = "Conformité FR-Batterie-examens-de-biologie-medicale (CI-SIS)"

* code MS
* code ^short = "<b>Code de la batterie d'examen</b>"
* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'examen"


