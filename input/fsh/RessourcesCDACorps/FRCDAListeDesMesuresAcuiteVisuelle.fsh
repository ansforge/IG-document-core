Profile: FRCDAListeDesMesuresAcuiteVisuelle
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-liste-des-mesures-acuite-visuelle
Title: "CDA - FR Liste des mesures acuite visuelle"
Description: "Entrée FR-Liste-des-mesures-acuite-visuelle: <p>IHE EYE CARE GEE - Visual Acuity Organizer</p>
   <ul>
      <li>
         <p> Cette entrée permet de recueillir les observations pour une seule acuité visuelle mesurée.</p>
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

* templateId contains frListeDesMesuresAcuiteVisuelle 1..1
and iheVisualAcuityOrganizer 1..1

* templateId[frListeDesMesuresAcuiteVisuelle] 1..1
* templateId[frListeDesMesuresAcuiteVisuelle].root = "1.2.250.1.213.1.1.3.115"
* templateId[frListeDesMesuresAcuiteVisuelle] ^short = "Déclaration de conformité FR-Liste-des-mesures-acuite-visuelle"
* templateId[iheVisualAcuityOrganizer] 1..1
* templateId[iheVisualAcuityOrganizer].root = "1.3.6.1.4.1.19376.1.12.1.3.2"
* templateId[iheVisualAcuityOrganizer] ^short = "Déclaration de conformité Visual Acuity Organizer (IHE EYE CARE GEE)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #28631-0
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la mesure"


