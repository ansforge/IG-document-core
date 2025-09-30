Extension: FrAntigenDoseExtension
Id: fr-antigen-dose-extension
Title: "Extension - Fr Antigen Dose"
Description: "Extension complexe pour représenter un consommable (FrMedication) et une doseQuantity dans Immunization."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Immunization"
* extension contains
    doseQuantity 1..1 and
    consumable 1..1
* extension[doseQuantity].valueQuantity
//* extension[consumable].valueReference 1..1
* extension[consumable].valueReference only Reference(FrMedication)
