// Précondition : extension URL
Extension: FrPreconditionExtension
Id: fr-precondition-extension
Title: "Extension - Fr Précondition de l'administration"
Description: "Extension permettant d'indiquer le lien vers la description narrative des conditions préalables dans le document."
* ^context.type = #element
* ^context.expression = "MedicationAdministration"
// or String ??
* value[x] only url or Annotation