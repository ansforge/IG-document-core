Extension: FrProcedureAdditionalInformation
Id: fr-additional-information-extension
Title: "Extension - Fr Additional information"
Description: "Extension permettant d'indiquer les autres précision sur le trajet ou le transport du patient."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Observation)