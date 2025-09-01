Extension: FrActorExtension
Id: fr-actor-extension
Title: "Fr Extension - Actor"
Description: "Extension pour représenter un acteur impliqué dans le document avec son type et sa référence."
* ^context[+].type = #element
* ^context[=].expression = "Resource"

* extension contains
    type 1..1 and
    reference 1..1
 
// Sous-extension type
* extension[type].value[x] only code
* extension[type].valueCode from FrValueSetActorType (required)
* extension[type] ^short = "Type d'acteur (AUT, PRF, PART, INF)"
 
// Sous-extension reference
* extension[reference].value[x] only Reference(FrPractitionerRoleDocument)
* extension[reference] ^short = "Référence vers le rôle du praticien dans le document"