// StructureDefinition for FrDiagnosticReportDocument
Profile: FrDiagnosticReportDocument
Parent: DiagnosticReport
Id: fr-diagnostic-report-document
Title: "DiagnosticReport - Fr Resultats"
Description: "
 - L'entrée 'FR-Resultats' est une entrée de type 'organizer' regroupant les types des résultats classés par type d’examens (BIO, IMG, etc…).
 - L'entrée 'FR-Resultats' est une entrée de type 'organizer' regroupant les types des résultats classés par type d’examens (BIO, IMG, etc…).
"
//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant de l'entrée"
* code MS
  * ^short = "Type de résultat. Code de l'entrée en LOINC."
* code from FrValueSetTypeResultat (required)
* status MS
* status ^short = "Statut  de l'entrée"
* status = #final
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Date"
* performer MS 
  * ^short = "Exécutant"
* performer.extension contains $performerFunction named performerFunction 1..1
* performer.extension[performerFunction] 1..1
* performer.extension[performerFunction].valueCodeableConcept.coding.code = #PPRF "primary performe" (exactly)
* performer only Reference (FrPractitionerDocument or FrPractitionerRoleDocument or FrOrganizationDocument)

* resultsInterpreter MS
  * ^short = "Auteur"
* resultsInterpreter.extension contains $performerFunction named performerFunction 1..1
* resultsInterpreter.extension[performerFunction] 1..1
* resultsInterpreter.extension[performerFunction].valueCodeableConcept.coding.code = #AUT "author (originator)" (exactly)
* resultsInterpreter only Reference (FrPractitionerDocument or FrPractitionerRoleDocument or FrOrganizationDocument)
* result 1..* MS
  * ^short = "Resultat"
* result only Reference (FrObservationResultatDocument)