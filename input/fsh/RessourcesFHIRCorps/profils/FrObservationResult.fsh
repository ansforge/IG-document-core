Profile: FrObservationResult
Parent: Observation
Id: fr-observation-result
Title: "Observation - FR Result"
Description: "FrObservationResult permet d'indiquer le résultat observé."

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
* interpretation[observationRange] ^short = "Interprétation"

* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument
    or FrOrganizationDocument
    or FrPractitionerRoleDocument
    or FrPatientINSDocument
    )

* insert FrRuleSetSimpleObservation