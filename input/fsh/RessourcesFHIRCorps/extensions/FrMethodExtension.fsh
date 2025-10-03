Extension: FrMethodExtension
Id: fr-method-extension
Title: "Extension - Fr Method"
Description: "Extension permettant d’indiquer la méthode utilisée."
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis
* valueCodeableConcept ^short = "Méthode utilisée"