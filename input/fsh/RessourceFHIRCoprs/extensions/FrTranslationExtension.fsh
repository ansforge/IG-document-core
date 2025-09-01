// --- Extension FrTranslation ---
Extension: FrTranslationExtension
Id: fr-translation-extension
Title: "Fr Translation"
Description: "Extension utilisée pour représenter d'autres codifications sous forme de CodeableConcept"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1