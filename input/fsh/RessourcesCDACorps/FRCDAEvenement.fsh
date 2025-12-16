Profile: FRCDAEvenement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Encounter
Id: fr-cda-evenement
Title: "CDA - FR Evenement"
Description: "Entrée FR-Evenement: <p>FR-Evenement</p>
   <p>Cette entrée est un élément de type 'encounter' permettant de conserver les données d’activités liées à un patient / usager. Il peut s'agir d'un évènement passé ou à venir.</p>"
* id 1..*
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdEncounterActivity 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frEvenement 1..1

* templateId[ccdEncounterActivity] 0..1
* templateId[ccdEncounterActivity].root = "2.16.840.1.113883.10.20.1.21"
* templateId[ccdEncounterActivity] ^short = "Conformité Encounter activity (CCD) si évènement réalisée (EVN) "
* templateId[ccdPlanOfCareActivityPlannedRealised] 0..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD) si évènement planifiée (INT) "
* templateId[frEvenement] 1..1
* templateId[frEvenement].root = "1.2.250.1.213.1.1.3.215"
* templateId[frEvenement] ^short = "Conformité FR-Evenement (CI-SIS)"

* code MS
* code ^short = "<p>
      <strong>Type d'évènement :</strong>
   </p>
   <p>Le JDV dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant). Si pas d'information utiliser le code Wolf ‘Aucun’.</p>"
* text MS
* text 0..1
* text ^short = "Libellé et motif de l'évènement"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l’évènement"
* effectiveTime.low ^short = "Date de début de l’évènement"
* effectiveTime.high ^short = "Date de fin de l’évènement"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frSimpleObservation 0..*
 and frCommentaireER 0..*
 and frReferenceInterne 0..*
 and frTransportDuPatient 0..*
 and frStatut 0..*
 and iheTransportDuProfessionnel 0..*



