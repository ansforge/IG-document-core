Extension: FrPriorityExtension
Id: fr-priority-extension
Title: "Extension - Fr Priority"
Description: "Extension permettant d’indiquer d'indique la priorité clinique de l’observation."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActPriority-cisis