Profile: FRCDASignesVitaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-signes-vitaux
Title: "CDA - FR Signes vitaux"
Description: "Entrée FR-Signes-vitaux: <p>IHE-PCC - Vital signs organizer</p>
   <p>L'entrée Signes vitaux est une entrée de type \"organizer\" qui permet de regrouper des informations relatives aux mesures cliniques du patient. </p>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheVitalSignsOrganizer 1..1
and ccdResultOrganizer 1..1
and ccdVitalSignsOrganizer 1..1
and frSignesVitaux 1..1

* templateId[iheVitalSignsOrganizer] 1..1
* templateId[iheVitalSignsOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.1"
* templateId[iheVitalSignsOrganizer] ^short = "Conformité Vital Signs Organizer (IHE PCC)"
* templateId[ccdResultOrganizer] 1..1
* templateId[ccdResultOrganizer].root = "2.16.840.1.113883.10.20.1.32"
* templateId[ccdResultOrganizer] ^short = "Conformité Result organizer (CCD)"
* templateId[ccdVitalSignsOrganizer] 1..1
* templateId[ccdVitalSignsOrganizer].root = "2.16.840.1.113883.10.20.1.35"
* templateId[ccdVitalSignsOrganizer] ^short = "Conformité Vital signs organizer (CCD)"
* templateId[frSignesVitaux] 1..1
* templateId[frSignesVitaux].root = "1.2.250.1.213.1.1.3.49"
* templateId[frSignesVitaux] ^short = "Conformité FR-Signes-vitaux (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'entrée.</b>
   </div>"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'entrée"


