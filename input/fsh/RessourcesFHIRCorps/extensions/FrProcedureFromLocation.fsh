Extension: FrProcedureFromLocation
Id: fr-procedure-from-location
Title: "Extension - Fr Lieu de départ du transport"
Description: "Extension pour représenter le lieu de départ d’un transport (patient ou professionnel)."

* extension contains
    type 1..1 MS and
    reference 1..1 MS

// Sous-extension "type" = code fixé depuis un ValueSet
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from http://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis (required)
* extension[type].valueCodeableConcept.coding.code = #ORG

// Sous-extension "reference" = référence vers Location
* extension[reference].value[x] only Reference(FrLocationDocument)
