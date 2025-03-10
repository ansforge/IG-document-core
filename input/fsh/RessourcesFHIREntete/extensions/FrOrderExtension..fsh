//Cette extension est utilisée pour enregistrer, dans la ressource Composition, la prescription à l’origine de l’acte dont résulte le document. 
//Aucune extension du HL7 FHIR ne permet d’enregistrer cet élément.
Extension: OrderExtension
Id: fr-order-extension
Title: "OrderExtension"
Description: "Extension permettant d'ajouter une association du document à une prescription dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Association du document à une prescription"
* valueReference 1.. MS
* valueReference only Reference(ServiceRequest)