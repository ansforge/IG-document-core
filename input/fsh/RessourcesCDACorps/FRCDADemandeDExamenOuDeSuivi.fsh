Profile: FRCDADemandeDExamenOuDeSuivi
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-demande-d-examen-ou-de-suivi
Title: "CDA - FR Demande d examen ou de suivi"
Description: "Entrée FR-Demande-d-examen-ou-de-suivi: <p>IHE-PCC - Observation Request </p>
   <ul>
      <li>
         <p>L'entrée Demande d'examen / de suivi est une observation qui permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins. </p>
      </li>
      <li>
         <p>Cette entrée est basée sur l'élément Simple Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise.</p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheObservationRequest 1..1
and ccdPlanOfCareActivityPlannedRealised 1..1
and frDemandeDexamenOuDeSuivi 1..1

* templateId[iheObservationRequest] 1..1
* templateId[iheObservationRequest].root = "1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"
* templateId[iheObservationRequest] ^short = "Conformité Observation Request (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlannedRealised] 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD)"
* templateId[frDemandeDexamenOuDeSuivi] 1..1
* templateId[frDemandeDexamenOuDeSuivi].root = "1.2.250.1.213.1.1.3.27"
* templateId[frDemandeDexamenOuDeSuivi] ^short = "Conformité FR-Demande-d-examen-ou-de-suivi (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Type de la demande</b>
   </div>
   <div> Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : <ul>
         <li>code='GEN-092.04.20'</li>
         <li>displayName='Autre demande d’examen ou de suivi'</li>
         <li>codeSystem='1.2.250.1.213.1.1.4.322' </li>
         <li>codeSystemName='TerminologieCISIS' </li>
      </ul> et décrire le type de la demande sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante. </div>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
* value MS
* value 0..1
* value ^short = "Résultat de la demande"
* value only ANY


* targetSiteCode 0..*
* targetSiteCode ^short = "<b>Cible</b>"

