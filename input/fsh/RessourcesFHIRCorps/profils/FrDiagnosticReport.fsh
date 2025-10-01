// StructureDefinition for FrDiagnosticReport
Profile: FrDiagnosticReport
Parent: DiagnosticReport
Id: fr-diagnostic-report
Title: "DiagnosticReport - Fr Results"
Description: "FrDiagnosticReport est un profil permettant de regrouper les types des résultats classés par type d’examens (BIO, IMG, etc…)."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant"
* code MS
  * ^short = "Type de résultat. Codee n LOINC."
* code from FrValueSetResultType (required) // VS à remplacer par le JDV ANS à créer par Alain
* status MS
* status ^short = "Statut"
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
* result only Reference (FrObservationResult)