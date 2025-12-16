Profile: FRCDADureeDOccupationDUnPoste
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-duree-d-occupation-d-un-poste
Title: "CDA - FR Duree d occupation d un poste"
Description: "Entrée FR-Duree-d-occupation-d-un-poste: <p>IHE-PCC - Usual Occupation Duration</p>
   <ul>
      <li>
         <p>Cette entrée permet d'indiquer la durée qu'une personne a occupé dans un poste.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheUsualOccupationDurationObservation 1..1
and frDureeDoccupationDunPoste 1..1

* templateId[iheUsualOccupationDurationObservation] 1..1
* templateId[iheUsualOccupationDurationObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.20.9"
* templateId[iheUsualOccupationDurationObservation] ^short = "Conformité Usual Occupation Duration Observation (IHE PCC)"
* templateId[frDureeDoccupationDunPoste] 1..1
* templateId[frDureeDoccupationDunPoste].root = "1.2.250.1.213.1.1.3.72"
* templateId[frDureeDoccupationDunPoste] ^short = "Conformité FR-Durée-d’occupation-d’un-poste (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #74163-7
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* value MS
* value 1..1
* value ^short = "Durée d'occupation d'un posteCet élément est de type xsi:type='PQ' (mois, année …)UCUM  (2.16.840.1.113883.1.11.12839) permet de renseigner l’unité de temps dans l’élément @unit "
* value only PQ



