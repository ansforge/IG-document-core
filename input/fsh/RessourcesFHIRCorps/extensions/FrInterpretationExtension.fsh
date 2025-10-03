Extension: FrInterpretationExtension
Id: fr-interpretation-extension
Title: "Extension - Fr Interpretation"
Description: "Extension permettant de spécifier une interprétation."
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* valueCodeableConcept ^short = "Interprétation"