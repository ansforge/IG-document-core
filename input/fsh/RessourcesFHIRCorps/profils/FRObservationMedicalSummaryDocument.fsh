Profile: FRObservationMedicalSummaryDocument
Parent: Observation
Id: fr-observation-medical-summary-document
Title: "Observation - FR Observation Medical Summary Document"
Description: "FRObservationMedicalSummaryDocument permet de fournir, sous forme textuelle, une synthèse médicale du séjour."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-142
* code.coding.display = "Synthèse médicale"

* value[x] only string
* valueString 1..1 MS
  * ^short = "Synthèse médicale du séjour (sous forme textuelle)"

* insert FRRuleSetSimpleObservation