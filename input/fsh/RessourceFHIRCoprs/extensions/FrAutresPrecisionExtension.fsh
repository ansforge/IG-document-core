Extension: FrAutresPrecisionExtension
Id: fr-autres-precision-extension
Title: "Fr Autres Precision"
Description: "Autres précision sur le trajet ou le transport du patient."
* ^context[+].type = #element
* ^context[=].expression = "Resource"
* value[x] only Reference(Observation)