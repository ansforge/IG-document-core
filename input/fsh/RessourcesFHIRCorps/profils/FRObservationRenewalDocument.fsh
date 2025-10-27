Profile: FRObservationRenewalDocument
Parent: Observation
Id: fr-observation-renewal-document
Title: "Observation - FR Observation Renewal Document"
Description: "FRObservationRenewalDocument est utilisée pour représenter le renouvellement de l'acte."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Renouvellement de l'acte"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-300 "Acte renouvelable"
* valueCodeableConcept 1..1 MS
* value[x] only CodeableConcept

// Participation d’un auteur
* performer MS
* performer.extension contains FRActorExtension named author 0..*
* performer.extension[author] ^short = "Participation d'un auteur au document"
* performer.extension[author].extension[type].valueCode = #AUT

* insert FRRuleSetSimpleObservation