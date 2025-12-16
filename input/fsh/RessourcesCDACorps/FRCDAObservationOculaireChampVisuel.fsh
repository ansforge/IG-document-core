Profile: FRCDAObservationOculaireChampVisuel
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-observation-oculaire-champ-visuel
Title: "CDA - FR Observation oculaire champ visuel"
Description: "Entrée FR-Observation-oculaire-champ-visuel: <p>IHE GEE - Observation oculaire (champ visuel de confrontation)</p>
   <ul>
      <li>
         <p>Cette entrée est une représentation abstraite d’un grand nombre d’observations oculaires(champ visuel de confrontation) utilisées dans cette spécification.</p>
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

* templateId contains frObservationOculaireChampVisuel 1..1
and iheOcularObservation 1..1

* templateId[frObservationOculaireChampVisuel] 1..1
* templateId[frObservationOculaireChampVisuel].root = "1.2.250.1.213.1.1.3.114.2"
* templateId[frObservationOculaireChampVisuel] ^short = "Conformité FR-Observation-oculaire-champ-visuel (CI-SIS)"
* templateId[iheOcularObservation] 1..1
* templateId[iheOcularObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.1"
* templateId[iheOcularObservation] ^short = "Conformité Ocular Observation (IHE EYE CARE GEE)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #421640006
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED-CT"

* text MS
* text 0..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 0..1
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

