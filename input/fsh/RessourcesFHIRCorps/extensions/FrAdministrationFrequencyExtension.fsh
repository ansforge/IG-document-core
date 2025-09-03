// Fréquence d'administration : extension Timing
Extension: FrAdministrationFrequency
Id: fr-administration-frequency
Title: "Fr Fréquence d’administration"
Description: "Extension pour représenter la fréquence d'administration dans MedicationAdministration et MedicationStatement"
// Contextes autorisés
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* value[x] only Timing
* valueTiming 0..1