Extension: FrAutresPrecisionExtension
Id: fr-autres-precision-extension
Title: "Extension - Fr Autres Precision"
Description: "Extension permettant d'indiquer les autres précision sur le trajet ou le transport du patient."
* ^context[+].type = #element
* ^context[=].expression = "Resource"
* value[x] only Reference(Observation)