Extension: InformantExtension
Id: fr-informant-extension
Title: "InformantExtension"
Description: "Extension permettant d'ajouter des informateur dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Informateur"

* extension contains
    type 1..1 and
    party 1..1

* extension[type]
* extension[type] ^short = "Type de participation : Informateur"
* extension[type].valueCodeableConcept 1..1
* extension[type].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[type].valueCodeableConcept.coding.code = #INF
* extension[type].valueCodeableConcept.text = "informant"
* extension[party]
* extension[party] ^short = "Informateur"
//* extension[party].value[x] only Reference
* extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference 1..1