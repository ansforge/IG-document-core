Extension: FrDifficultyExtension
Id: fr-difficulty-extension
Title: "Extension - Procedure Difficulty"
Description: "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte, référencée sous forme d'une Observation."

* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(FrObservationDifficulty)
* value[x] ^short = "Observation représentant la difficulté de l'acte"