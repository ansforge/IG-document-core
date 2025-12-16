Profile: FRCDAListeDesMesuresKeratometriques
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-liste-des-mesures-keratometriques
Title: "CDA - FR Liste des mesures keratometriques"
Description: "Entrée FR-Liste-des-mesures-keratometriques: <p>IHE GEE - Organisateur de kératométrie</p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer les mesures Keratometriques.</p>
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

* templateId contains frListeDesMesuresKeratometriques 1..1
and iheKeratometryMeasurementsOrganizer 1..1

* templateId[frListeDesMesuresKeratometriques] 1..1
* templateId[frListeDesMesuresKeratometriques].root = "1.2.250.1.213.1.1.3.117"
* templateId[frListeDesMesuresKeratometriques] ^short = "Déclaration de conformité FR-Liste-des-mesures-keratometriques "
* templateId[iheKeratometryMeasurementsOrganizer] 1..1
* templateId[iheKeratometryMeasurementsOrganizer].root = "1.3.6.1.4.1.19376.1.12.1.3.4"
* templateId[iheKeratometryMeasurementsOrganizer] ^short = "Déclaration de conformité Keratometry Measurements Organizer(IHE EYE CARE)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #252828005
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED CT"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de la mesure"


