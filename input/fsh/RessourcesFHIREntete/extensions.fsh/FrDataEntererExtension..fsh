Extension: DataEntererExtension
Id: fr-data-enterer-extension
Title: "DataEntererExtension"
Description: "Extension permettant d'ajouter un opérateur de saisie dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Opérateur de saisie"
* extension contains
    type 1..1 and
    time 1..1 and 
    party 1..1

* extension[type]
* extension[type] ^short = "Type de participation : opérateur de saisie"
* extension[type].valueCodeableConcept 1..1
* extension[type].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[type].valueCodeableConcept.coding.code = #ENT
* extension[type].valueCodeableConcept.text = "data entry person"
* extension[time]
* extension[time] ^short = "Date de la saisie"
* extension[time].value[x] only Period
* extension[time].valuePeriod 1..1
* extension[party]
* extension[party] ^short = "Opérateur"
* extension[party].value[x] only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference 1..1