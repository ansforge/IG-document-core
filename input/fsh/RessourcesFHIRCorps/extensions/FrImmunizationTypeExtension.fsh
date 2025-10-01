Extension: FrImmunizationTypeExtension
Id: fr-immunization-type-extension
Title: "Extension - Fr Immunization Type"
Description: "Extension représentant le type de vaccination (ex: INITIMMUNIZ, BOOSTER, IMMUNIZ), équivalent au code de l'entrée CDA FR-Vaccination."
* ^context.type = #element
* ^context.expression = "Immunization"

* value[x] only CodeableConcept
