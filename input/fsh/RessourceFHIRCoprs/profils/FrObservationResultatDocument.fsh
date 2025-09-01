// StructureDefinition for FrObservationResultatDocument
Profile: FrObservationResultatDocument
Parent: Observation
Id: fr-observation-resultat-document
Title: "Observation - FR Resultat"
Description: "Cette entrée permet d'indiquer le résultat observé."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* value[x] MS
  * ^short = "Observation effectuée"
* referenceRange MS
  * ^short = "Intervalles de référence"
// Slicing sur interpretation dans referenceRange
* interpretation ^slicing.discriminator.type = #pattern
* interpretation ^slicing.discriminator.path = "$this"
* interpretation ^slicing.rules = #open

* interpretation contains observationRange  0..1
* interpretation[observationRange] ^short = "InterpretationCode"

* insert FrRuleSetSimpleObservation