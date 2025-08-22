Profile: FrObservationRenouvellement
Parent: Observation
Id: fr-observation-renouvellement
Title: "Observation - Fr renouvellement de l'acte"
Description: "Observation utilisée pour représenter le renouvellement de l'acte."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Renouvellement de l'acte"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-300 "Acte renouvelable"
* valueCodeableConcept 1..1 MS
* value[x] only CodeableConcept

* insert FrRuleSetSimpleObservation