Extension: FrVaccinationTypeExtension
Id: fr-vaccination-type-extension
Title: "Extension - Fr Vaccination Type"
Description: "Extension représentant le type de vaccination (ex: INITIMMUNIZ, BOOSTER, IMMUNIZ), équivalent au code de l'entrée CDA FR-Vaccination."
* ^context.type = #element
* ^context.expression = "Immunization"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from FrValueSetVaccinationType (required)
