Extension: DataEnterer
Id: fr-data-enterer-extension
Title: "DataEnterer"
Description: "Extension permettant d'ajouter un opérateur de saisie dans la Composition."
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* . ^short = "Opérateur de saisie"

* extension contains
    type 1..1 and
    time 1..1 and 
    party 1..1
* extension[type].valueCodeableConcept only CodeableConcept
* extension[type].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[type].valueCodeableConcept.coding.code = #ENT
* extension[type].valueCodeableConcept.text = "data entry person"
* extension[time].valuePeriod only Period
* extension[party].valueReference only Reference(FrOrganizationDocument)