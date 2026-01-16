/* Equivalents EHDSCondition précisés en commentaires pour chaque donnée métier */
Logical: FRLMProbleme
Id: fr-lm-probleme
//Parent: EHDSCondition
Title: "Modèle logique métier - FR LM Problème"
Description: """Problème"""
Characteristics: #can-be-target

//identifier
* identifiant 1..1 Identifier "Identifiant de l'entrée"
//code 
* type 1..1  CodeableConcept "Type d'observation"
* description 1..1 Narrative "Description narrative du problème. Cet élément permet de décrire le problème enregistré, les dates, commentaires, etc.."
//category
* problemeObserve 1..1 CodeableConcept "Problème observé"
// Absent du modèle EHDS / Pas d’équivalent FHIR
* statut 1..1 code "Statut de l'entrée"
//onsetDate
* dateProbleme 1..1 dateTime "Date de début du problème"
//clinicalStatus : CodeableConcept
* statutProbleme 0..1 FRLMStatutProbleme "Statut du problème"
//severity
* severite 0..1 FRLMSeverite "Sévérité"
//diagnosisAssertionStatus : CodeableConcept
* certitude 0..1 FRLMCertitude "Certitude"
// Absent du modèle EHDS / Pas d’équivalent FHIR
* statutClinique 0..1 FRLMStatutCliniquePatient "Statut clinique du patient" 
//externalResourceRelatedWith
* reference 0..* Base "Document référencé"
  * externalDocument 1..1 Base "Document référencé"
    * identifiant 1..1 identifier "Identifiant du document"
    * text 0..1 Base "Référence externe du document"
      * reference 1..* uri "Cet élément contient l’URL du document"
//Absent du modèle EHDS // Condition.note en FHIR
* commentaire 0..1 FRLMCommentaireER "Commentaire"
/*
* participant 0..0
* resolutionCircumstances 0..0
* anatomicLocation 0..0
* stage 0..0
*/
