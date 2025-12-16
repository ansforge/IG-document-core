Profile: FRCDARencontre
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Encounter
Id: fr-cda-rencontre
Title: "CDA - FR Rencontre"
Description: "Entrée FR-Rencontre: <p>IHE-PCC - Encounter</p>
   <p> L'entrée 'Rencontre' est un élément de type 'encounter' permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir. </p>"
* id 1..*
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheEncounter 1..1
and ccdEncounterActivity 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frRencontre 1..1

* templateId[iheEncounter] 1..1
* templateId[iheEncounter].root = "1.3.6.1.4.1.19376.1.5.3.1.4.14"
* templateId[iheEncounter] ^short = "Conformité Encounter (IHE PCC)"
* templateId[ccdEncounterActivity] 0..1
* templateId[ccdEncounterActivity].root = "2.16.840.1.113883.10.20.1.21"
* templateId[ccdEncounterActivity] ^short = "Conformité Encounter activity (CCD) Si rencontre réalisée (moodCode='EVN')"
* templateId[ccdPlanOfCareActivityPlannedRealised] 0..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD) Si rencontre planifiée (moodCode='PMRS') ou prévue non confirmée  (moodCode='ARQ')"
* templateId[frRencontre] 1..1
* templateId[frRencontre].root = "1.2.250.1.213.1.1.3.58"
* templateId[frRencontre] ^short = "Conformité FR-Rencontre (CI-SIS)"

* code MS
* code ^short = "<span style='font-weight: bold;'>Type de rencontre</span>
   <br clear='none'/> Valeur généralement issue du JDV_HL7_ActEncounterCode_CISIS (2.16.840.1.113883.1.11.13955) mais un autre JDV peut être utilisé pour certains documents spécifiques (dans ce cas, le JDV est fourni dans le volet concerné). <br clear='none'/>"
* text MS
* text 0..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de la rencontre Si la rencontre est réalisée (EVN) ou planifiée (PMRS) : la date est obligatoire.  Si la rencontre est prévue non confirmée (ARQ) : la date est facultative."
* participant MS
* participant 0..1
* participant ^short = "Lieu d'exécution"



