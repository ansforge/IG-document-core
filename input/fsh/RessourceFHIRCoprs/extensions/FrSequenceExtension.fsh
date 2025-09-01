Extension: FrSequenceExtension
Id: fr-sequence-extension
Title: "FR Sequence"
Description: "Dosages progressifs et fractionnés"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only integer
* valueInteger 0..1