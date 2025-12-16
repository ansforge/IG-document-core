Profile: FRCDAGroupeDeQuestionnairesDEvaluation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-groupe-de-questionnaires-d-evaluation
Title: "CDA - FR Groupe de questionnaires d evaluation"
Description: "Entrée FR-Groupe-de-questionnaires-d-evaluation: <p>IHE-PCC - Survey-pannel <br/>
   </p>
   <ul>
      <li>
         <p>L'entrée \"Groupe de questionnaires d’évaluation\" est une entrée de type \"organizer\" qui permet de rassembler des observations de questionnaires. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSurveyPanel 1..1
and ccdResultOrganizer 1..1
and frGroupeDeQuestionnairesDevaluation 1..1

* templateId[iheSurveyPanel] 1..1
* templateId[iheSurveyPanel].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.7"
* templateId[iheSurveyPanel] ^short = "Conformité Survey Panel (IHE PCC)"
* templateId[ccdResultOrganizer] 1..1
* templateId[ccdResultOrganizer].root = "2.16.840.1.113883.10.20.1.32"
* templateId[ccdResultOrganizer] ^short = "Conformité Result organizer (CCD)"
* templateId[frGroupeDeQuestionnairesDevaluation] 1..1
* templateId[frGroupeDeQuestionnairesDevaluation].root = "1.2.250.1.213.1.1.3.95"
* templateId[frGroupeDeQuestionnairesDevaluation] ^short = "Conformité FR-Groupe-de-questionnaires-d-evaluation (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l'entrée"


