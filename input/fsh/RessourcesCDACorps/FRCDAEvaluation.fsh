Profile: FRCDAEvaluation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evaluation
Title: "CDA - FR Evaluation"
Description: "Entrée FR-Evaluation: <p>IHE-PCC - Survey Observation </p>
   <ul>
      <li>
         <p>L'entrée Evaluation permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple).</p>
      </li>
   </ul>
   <ul>
      <li>
         <p>Cette entrée est basée sur l’entrée FR-Simple-Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSurveyObservation 1..1
and iheSimpleObservation 1..1
and ccdResultObservation 1..1
and frEvaluation 1..1

* templateId[iheSurveyObservation] 1..1
* templateId[iheSurveyObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.6"
* templateId[iheSurveyObservation] ^short = "Conformité Survey Observation (IHE PCC)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdResultObservation] 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Simple Observation (CCD)"
* templateId[frEvaluation] 1..1
* templateId[frEvaluation].root = "1.2.250.1.213.1.1.3.25"
* templateId[frEvaluation] ^short = "Conformité FR-Evaluation (CI-SIS)"

* code MS
* code ^short = "<p>
      <strong>Type d'évaluation :</strong>
   </p>
   <p>
      <strong>LOINC </strong>(2.16.840.1.113883.6.1) ou <strong>ICF</strong> (2.16.840.1.113883.6.254) ou autre</p>
   <p>Si le type d'évaluation n'est pas trouvé dans les terminologies proposées, utiliser le <strong>
         <em>code='54522-8' displayName='Statut fonctionnel' codeSystem=' 2.16.840.1.113883.6.1' codeSystemName='LOINC'</em>
      </strong> et décrire le type d'évaluation sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante.</p>
   <p/>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date"
* value MS
* value 1..1
* value ^short = "Valeur de l'évaluationLe type (code) et la valeur de la mesure (réponse) dépendent du volet utilisant cette entrée et sont spécifiquement précisés dans les volets de contenus."
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
dummySlice6668 0..*
 and frStatut 0..1
 and frCommentaireER 0..*
 and frReferenceInterne 0..*



