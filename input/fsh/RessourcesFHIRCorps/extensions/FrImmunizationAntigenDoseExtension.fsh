Extension: FrImmunizationadministredProductExtension
Id: fr-administred-product-extension
Title: "Extension - Fr Administred product"
Description: "Extension pour représenter le produit administré dans Immunization."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Immunization"

* valueReference only Reference(FrMedication)
