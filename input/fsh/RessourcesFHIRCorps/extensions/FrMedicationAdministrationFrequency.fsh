// Fréquence d'administration : extension Timing
Extension: FrMedicationAdministrationFrequency
Id: fr-administration-frequency-extension
Title: "Extension - Fr Administration Frequency"
Description: "Extension pour représenter la fréquence d'administration dans MedicationAdministration et MedicationStatement"
// Contextes autorisés
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] only Timing
* valueTiming 0..1