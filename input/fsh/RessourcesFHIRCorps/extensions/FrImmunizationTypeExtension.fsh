Extension: FrImmunizationTypeExtension
Id: fr-immunization-type-extension
Title: "Extension - Fr Immunization Type"
Description: "Extension représentant le type de vaccination (ex: INITIMMUNIZ, BOOSTER, IMMUNIZ)."
* ^context.type = #element
* ^context.expression = "Immunization"

* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis

