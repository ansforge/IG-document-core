Profile: FRCDAObservationOculaire
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-observation-oculaire
Title: "CDA - FR Observation oculaire"
Description: "Entrée FR-Observation-oculaire: <p>IHE GEE - Ocular Observation</p>
   <ul>
      <li>
         <p>Cette entrée recueille divers types d'observations oculaires, telles que Lacrymal, Segment Postérieur, Segment Antérieur, Pupilles, Pression intraoculaire, etc.</p>
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

* templateId contains frObservationOculaire 1..1
and iheOcularObservation 1..1

* templateId[frObservationOculaire] 1..1
* templateId[frObservationOculaire].root = "1.2.250.1.213.1.1.3.114"
* templateId[frObservationOculaire] ^short = "Conformité FR-Observation-oculaire"
* templateId[iheOcularObservation] 1..1
* templateId[iheOcularObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.1"
* templateId[iheOcularObservation] ^short = "Conformité Ocular Observation (IHE EYE CARE GEE)"

* code MS
* code ^short = "<div>
      <b>Code de l'observation</b>
   </div>"
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur observée"
* value only PQ


* targetSiteCode 1..1
* targetSiteCode ^short = "<b>Localisation anatomique</b>"
* targetSiteCode.qualifier ^short = "<div>
      <b>Précision sur la localisation anatomique</b>
   </div>
   <div>SNOMED CT (2.16.840.1.113883.6.96)</div>"

