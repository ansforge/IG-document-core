Profile: FRCDAListeDesMesuresDeRefraction
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-liste-des-mesures-de-refraction
Title: "CDA - FR Liste des mesures de refraction"
Description: "Entrée FR-Liste-des-mesures-de-refraction: <p>IHE EYE CARE GEE - Refractive Measurements Organizer</p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer les mesures de la rubrique Réfraction automatique.</p>
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

* templateId contains frListeDesMesuresDeRefraction 1..1
and iheRefractiveMeasurementsOrganizer 1..1

* templateId[frListeDesMesuresDeRefraction] 1..1
* templateId[frListeDesMesuresDeRefraction].root = "1.2.250.1.213.1.1.3.116"
* templateId[frListeDesMesuresDeRefraction] ^short = "Déclaration de conformité FR-Liste-des-mesures-de-refraction"
* templateId[iheRefractiveMeasurementsOrganizer] 1..1
* templateId[iheRefractiveMeasurementsOrganizer].root = "1.3.6.1.4.1.19376.1.12.1.3.3"
* templateId[iheRefractiveMeasurementsOrganizer] ^short = "Déclaration de conformité Refractive Measurements Organizer (IHE EYE CARE GEE)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #70938-6
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de la mesure"


