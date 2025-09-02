Profile: FrObservationContexte
Parent: Observation
Id: fr-observation-contexte
Title: "Observation - Fr Contexte de l'acte"
Description: "Observation représentant le contexte de l’acte"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Contexte de l'acte"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-299 "Contexte"
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