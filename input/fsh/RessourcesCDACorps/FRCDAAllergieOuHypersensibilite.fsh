Profile: FRCDAAllergieOuHypersensibilite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-allergie-ou-hypersensibilite
Title: "CDA - FR Allergie ou hypersensibilite"
Description: "Entrée FR-Allergie-ou-hypersensibilite: <p>IHE-PCC Allergy-And-Intolerance </p>
   <p>Cette entrée permet de décrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie, en précisant :</p>
   <ul>
      <li>
         <p>Le type : allergie médicamenteuse, hypersensibilité non allergique alimentaire, etc.</p>
      </li>
      <li>
         <p>La date de début et de fin</p>
      </li>
      <li>
         <p>L'agent responsable : médicament, agent environnemental, …</p>
      </li>
      <li>
         <p>Le statut clinique : Actif, Inactif, Résolu</p>
      </li>
      <li>
         <p>La criticité : Bas, Elevé, Impossible à évaluer</p>
      </li>
      <li>
         <p>La certitude : Confirmé, Non confirmé, Réfuté</p>
      </li>
      <li>
         <p>La (les) réaction(s) observée(s) : urticaire, nausée, … et</p>
      </li>
      <li>
         <p>La sévérité de la réaction : Potentiellement mortel, Elevé, Modéré, Bas, …</p>
      </li>
      <li>
         <p>un commentaire sur la réaction</p>
      </li>
      <li>
         <p>Cette entrée est basée sur l'entrée Problème (1.3.6.1.4.1.19376.1.5.3.1.4.5) qu'elle spécialise. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..5
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdAlertObservation 1..1
and iheProblemEntry 1..1
and ccdProblemObservation 1..1
and iheAllergiesAndIntolerancesEntry 1..1
and frAllergieOuHypersensibilite 1..1

* templateId[ccdAlertObservation] 1..1
* templateId[ccdAlertObservation].root = "2.16.840.1.113883.10.20.1.18"
* templateId[ccdAlertObservation] ^short = "Conformité Alert observation (CCD)"
* templateId[iheProblemEntry] 1..1
* templateId[iheProblemEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[iheProblemEntry] ^short = "Conformité Problem Entry (IHE PCC) "
* templateId[ccdProblemObservation] 1..1
* templateId[ccdProblemObservation].root = "2.16.840.1.113883.10.20.1.28"
* templateId[ccdProblemObservation] ^short = "Conformité Problem observation (CCD)"
* templateId[iheAllergiesAndIntolerancesEntry] 1..1
* templateId[iheAllergiesAndIntolerancesEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.6"
* templateId[iheAllergiesAndIntolerancesEntry] ^short = "Conformité Allergies And Intolerances Entry (IHE PCC)"
* templateId[frAllergieOuHypersensibilite] 1..1
* templateId[frAllergieOuHypersensibilite].root = "1.2.250.1.213.1.1.3.41"
* templateId[frAllergieOuHypersensibilite] ^short = "Conformité FR-Allergie-ou-hypersensibilite (CI-SIS)"

* code MS
* code ^short = "<div>
      <strong>Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie</strong>
   </div>"
* code MS
* code 1..1
* code ^short = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis

* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin"
* effectiveTime.low ^short = "Date de début "
* effectiveTime.high ^short = "ate de fin"
* value MS
* value 1..1
* value ^short = "L'élément <value> sera utilisé pour indiquer qu'il n'y a pas d'allergie/hypersensibilité ou que l'on ne sait pas à partir du jdv-absent-or-unknown-allergy-cisis (1.2.250.1.213.1.1.5.661)."
* value only CD

* value.originalText MS
* value.originalText 1..1
* participant MS
* participant 0..1
* participant ^short = "Agent responsable"

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frProbleme 0..*
 and frStatutDuProbleme 0..1
 and frCriticite 0..1
 and frCertitude 0..1



