Extension: OrderExtension
Id: fr-order-extension
Title: "OrderExtension"
Description: "Extension permettant d'ajouter une association du document à une prescription dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Association du document à une prescription"
* valueReference 1.. MS
* valueReference only Reference(ServiceRequest)