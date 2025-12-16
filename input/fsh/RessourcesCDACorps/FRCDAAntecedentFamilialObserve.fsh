Profile: FRCDAAntecedentFamilialObserve
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-antecedent-familial-observe
Title: "CDA - FR Antecedent familial observe"
Description: "Entrée FR-Antecedent-familial-observe: <p>IHE-PCC - Family History Observation </p>
   <ul>
      <li>
         <p>L'entrée Antécédent familial observé permet d'apporter des informations complémentaires relatives aux membres de la famille du patient (pathologies, etc…). </p>
      </li>
      <li>
         <p>Cette entrée est utilisée dans un élément Antécédents familiaux (1.3.6.1.4.1.19376.1.5.3.1.4.15). </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheFamilyHistoryObservation 1..1
and ccdFamilyHistoryObservation 1..1
and iheSimpleObservation 1..1
and frAntecedentFamilialObserve 1..1

* templateId[iheFamilyHistoryObservation] 1..1
* templateId[iheFamilyHistoryObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.3"
* templateId[iheFamilyHistoryObservation] ^short = "Conformité Family History Observation (IHE PCC)"
* templateId[ccdFamilyHistoryObservation] 1..1
* templateId[ccdFamilyHistoryObservation].root = "2.16.840.1.113883.10.20.1.22"
* templateId[ccdFamilyHistoryObservation] ^short = "Conformité Family history observation (CCD)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Family History Observation (IHE PCC)"
* templateId[frAntecedentFamilialObserve] 1..1
* templateId[frAntecedentFamilialObserve].root = "1.2.250.1.213.1.1.3.51"
* templateId[frAntecedentFamilialObserve] ^short = "Conformité FR-Antecedent-familial-observe (CI-SIS)"

* code MS
* code ^short = "<b>Type de l'observation</b>"
* code MS
* code 1..1
* code ^short = "Type de l'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis

* text MS
* text 1..1
* text ^short = "Description narrative de la valeur de l'observation"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l'entrée"

* targetSiteCode 0..1
* targetSiteCode ^short = "<b>Site</b>"

