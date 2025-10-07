// Précondition : extension URL
Extension: FrPreconditionExtension
Id: fr-precondition-extension
Title: "Extension - Fr Precondition"
Description: "Extension permettant d'indiquer le lien vers la description narrative des conditions préalables dans le document."
* ^context.type = #element
* ^context.expression = "MedicationAdministration"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* ^context.type = #element
* ^context.expression = "MedicationStatement"

// or String ??
* value[x] only url or Annotation
