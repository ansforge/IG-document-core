Extension: FrAdditionalInformation
Id: fr-additional-information-extension
Title: "Extension - Fr Additional information"
Description: "Extension permettant d'indiquer les autres précision sur le trajet ou le transport du patient."
* ^context[+].type = #element
* ^context[=].expression = "Resource"
* value[x] only Reference(Observation)