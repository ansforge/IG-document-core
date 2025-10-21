Extension: FRProcedureScoreExtension
Id: fr-procedure-score-extension
Title: "FR Procedure Score Extension"
Description: "Extension permettant d'indiquer un ou plusieurs scores cliniques liés à l'acte (ex: score d'ASA, score de Glasgow)."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* value[x] ^short = "Score clinique"