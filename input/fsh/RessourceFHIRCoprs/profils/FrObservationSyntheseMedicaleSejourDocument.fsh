// StructureDefinition for FrObservationSyntheseMedicaleSejourDocument 
Profile: FrObservationSyntheseMedicaleSejourDocument 
Parent: Observation
Id: fr-observation-synthese-medicale-sejour-document 
Title: "Observation - Fr Synthèse médicale du séjour"
Description: "Cette entrée permet de fournir, sous forme textuelle, une synthèse médicale du séjour."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-142
* code.coding.display = "Synthèse médicale"

* value[x] only string
* valueString 1..1 MS
  * ^short = "Synthèse médicale du séjour (sous forme textuelle)"

* insert FrRuleSetSimpleObservation