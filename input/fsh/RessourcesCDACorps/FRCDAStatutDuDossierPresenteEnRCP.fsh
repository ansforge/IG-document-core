Profile: FRCDAStatutDuDossierPresenteEnRCP
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-statut-du-dossier-presente-en-rcp
Title: "CDA - FR Statut du dossier presente en RCP"
Description: "Entrée FR-Statut-du-dossier-presente-en-RCP: <ul>
      <li>
         <p>Cette entrée de type organizer permet de regrouper des informations relatives au dossier du patient. </p>
      </li>
      <li>
         <p>Les éléments component de cet organizer sont des entrées de type FR-Simple-Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13).</p>
      </li>
      <li>
         <p>Elle porte les informations relatives aux conditions du déroulement de la RCP :</p>
         <ul>
            <li>
               <p>dossier complet : oui/non</p>
            </li>
            <li>
               <p>quorum : atteint/non atteint</p>
            </li>
            <li>
               <p>un commentaire sur le dossier </p>
            </li>
         </ul>
      </li>
   </ul>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 0..1
* id ^short = "Identifiant"

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frStatutDuDossierPresenteEnRCP 1..1

* templateId[frStatutDuDossierPresenteEnRCP] 1..1
* templateId[frStatutDuDossierPresenteEnRCP].root = "1.2.250.1.213.1.1.3.7"
* templateId[frStatutDuDossierPresenteEnRCP] ^short = "Conformité FR-Statut-du-dossier-presente-en-RCP (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #GEN-099
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'entrée"


