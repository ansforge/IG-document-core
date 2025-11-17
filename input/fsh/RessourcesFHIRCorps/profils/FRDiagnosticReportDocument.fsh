Profile: FRDiagnosticReportDocument
Parent: DiagnosticReport
Id: fr-diagnostic-report-document
Title: "DiagnosticReport - FR Diagnostic Report Document"
Description: "FRDiagnosticReportDocument est un profil permettant de regrouper les types des résultats classés par type d’examens (BIO, IMG, etc…)."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant"
* code MS
  * ^short = "Type de résultat. Codee n LOINC."
* code from FRValueSetResultTypeDocument (required) // VS à remplacer par le JDV ANS à créer par Alain
* status MS
* status ^short = "Statut"
* status = #final
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Date"
* performer MS 
  * ^short = "Exécutant"
* performer.extension contains $event-performerFunction named performerFunction 1..1
* performer.extension[performerFunction] 1..1
* performer.extension[performerFunction].valueCodeableConcept.coding.code = #PPRF "primary performe"
* performer only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)

* resultsInterpreter MS
  * ^short = "Auteur"
* resultsInterpreter.extension contains $event-performerFunction named performerFunction 1..1
* resultsInterpreter.extension[performerFunction] 1..1
* resultsInterpreter.extension[performerFunction].valueCodeableConcept.coding.code = #AUT "author (originator)"
* resultsInterpreter only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)
* result 1..* MS
  * ^short = "Resultat"
* result only Reference (FRObservationResultDocument)
