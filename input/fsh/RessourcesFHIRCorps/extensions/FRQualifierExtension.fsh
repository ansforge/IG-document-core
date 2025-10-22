Extension: FRQualifierExtension
Id: fr-qualifier-extension
Title: "FR Qualifier Extension"
Description: "Extension permettant d’associer à un code une précision (qualifier)."
* ^context[+].type = #element
* ^context[=].expression = "Coding"
// Sous-extensions
* extension contains
    name 0..1 and
    value 0..1

* extension[name].value[x] only CodeableConcept
* extension[name] ^short = "Nom de la précision du code"

* extension[value].value[x] only CodeableConcept
* extension[value] ^short = "Valeur de la précision du code"