Extension: FrRepeatNumberExtension
Id: fr-repeat-number-extension
Title: "Extension - Fr Repeat Number"
Description: "Extension permettant d'indiquer le numéro d'occurrence de l'acte ou de l'observation."
* ^context[+].type = #element
* ^context[=].expression = "Resource"

* value[x] only integer
* valueInteger 0..1