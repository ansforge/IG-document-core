// --- Extension FrTranslation ---
Extension: FrTranslationExtension
Id: fr-translation-extension
Title: "Extension - Fr Translation"
Description: "Extension utilisée pour représenter d'autres codifications sous forme de CodeableConcept"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Resource"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1