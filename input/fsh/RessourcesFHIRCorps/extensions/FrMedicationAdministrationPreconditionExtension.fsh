// Précondition : extension URL
Extension: FrMedicationAdministrationPreconditionExtension
Id: fr-precondition-extension
Title: "Extension - Fr Administration Precondition"
Description: "Extension permettant d'indiquer le lien vers la description narrative des conditions préalables dans le document."
* ^context.type = #element
* ^context.expression = "MedicationAdministration"
// or String ??
* value[x] only url or Annotation