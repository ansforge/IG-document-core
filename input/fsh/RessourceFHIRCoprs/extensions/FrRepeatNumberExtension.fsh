Extension: FrRepeatNumberExtension
Id: fr-repeat-number-extension
Title: "Fr Repeat Number"
Description: "Numéro d'occurrence de l'acte ou de l'observation (équivalent CDA repeatNumber)"
* ^context[+].type = #element
* ^context[=].expression = "Resource"

* value[x] only integer
* valueInteger 0..1