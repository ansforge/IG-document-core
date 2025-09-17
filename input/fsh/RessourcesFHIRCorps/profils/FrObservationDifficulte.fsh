Profile: FrObservationDifficulte
Parent: Observation
Id: fr-observation-difficulte
Title: "Observation - Fr Difficulté de l'acte"
Description: "Observation utilisée pour représenter la difficulté d'un acte."

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
* performer.extension[author].extension[reference].valueReference only Reference(
    FrPractitionerRoleDocument 
    or FrOrganizationDocument 
    or FrPractitionerRoleDocument 
    or FrPatientINSDocument 
    or FrPatientDocument)

* insert FrRuleSetSimpleObservation