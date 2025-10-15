Extension: FrProcedureDifficultyExtension
Id: fr-difficulty-extension
Title: "Extension - Procedure Difficulty"
Description: "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte."

* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* value[x] ^short = "Difficulté de l'acte"