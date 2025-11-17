Profile: FRObservationStatusDocument
Parent: Observation
Id: fr-observation-status-document
Title: "Observation - FR Observation Status Document"
Description: "FRObservationStatusDocument permet de décrire et de suivre le statut métier d’un objet."

* code.coding.system = "https://loinc.org/"
* code.coding.code = #106199-3
* code.coding.display = "Statut"

* value[x] only FRDocumentCodeableConceptDocument
* valueCodeableConcept 1..1 MS
  * ^short = "Statut métier"
* valueCodeableConcept.coding.extension[qualifier].extension[name] 1..1 
* valueCodeableConcept.coding.extension[qualifier].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-348 "Motif du statut métier"
* valueCodeableConcept.coding.extension[qualifier].extension[value] 1..1

* insert FRRuleSetSimpleObservation