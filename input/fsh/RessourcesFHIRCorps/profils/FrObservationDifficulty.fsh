Profile: FrObservationDifficulty
Parent: Observation
Id: fr-observation-difficulty
Title: "Observation - Fr Difficulty of the act"
Description: "FrObservationDifficulty est utilisée pour représenter la difficulté d'un acte."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Difficulté de l'acte"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-023 "Précisions difficultés"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument 
    or FrOrganizationDocument 
    or FrPractitionerRoleDocument 
    or FrPatientINSDocument 
    or FrPatientDocument)

* insert FrRuleSetSimpleObservation