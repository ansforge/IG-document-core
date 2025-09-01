// Précondition : extension URL
Extension: FrPreconditionExtension
Id: fr-precondition-extension
Title: "Fr Précondition de l'administration"
Description: "Lien vers la description narrative des conditions préalables dans le document CDA."
* ^context.type = #element
* ^context.expression = "MedicationAdministration"
// or String ??
* value[x] only url or Annotation