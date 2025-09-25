// StructureDefinition for FrObservationStatut
Profile: FrObservationStatut
Parent: Observation
Id: fr-observation-statut
Title: "Observation - Fr Statut"
Description: "FrObservationStatut permet de décrire et de suivre le statut métier d’un objet."

* code.coding.system = "https://loinc.org/"
* code.coding.code = #106199-3
* code.coding.display = "Statut"

* value[x] only FrDocumentCodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "Statut métier"
* valueCodeableConcept.coding.extension[qualifier].extension[name] 1..1 
* valueCodeableConcept.coding.extension[qualifier].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-348 "Motif du statut métier"
* valueCodeableConcept.coding.extension[qualifier].extension[value] 1..1

* performer MS
* performer.extension contains FrActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument
    or FrOrganizationDocument
    or FrPractitionerRoleDocument
    or FrPatientINSDocument
    )
* insert FrRuleSetSimpleObservation