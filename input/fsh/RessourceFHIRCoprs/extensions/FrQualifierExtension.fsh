Extension: FrQualifierExtension
Id: fr-qualifier-extension
Title: "Qualifier du code"
 
* ^context.type = #element
* ^context.expression = "Coding"
 
// Sous-extensions
* extension contains
    name 0..1 and
    value 0..1
 
* extension[name].value[x] only CodeableConcept
* extension[name] ^short = "Type de précision"
 
* extension[value].value[x] only CodeableConcept
* extension[value] ^short = "Valeur de la précision du code"