Extension: FrScoreExtension
Id: fr-score-extension
Title: "Extension - Fr Procedure associated score"
Description: "Extension permettant de référencer un ou plusieurs scores cliniques liés à l'acte (ex: score d'ASA, score de Glasgow)."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Observation)
* value[x] ^short = "Observation représentant un score clinique"