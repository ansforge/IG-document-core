Extension: FrDispenserInstructionExtension
Id: fr-dispenser-instruction-extension
Title: "Extension - Fr Dispenser Instruction"
Description: "Extension pour représenter les instructions au dispensateur : par exemple pour indiquer que le traitement doit être étiqueté dans une langue étrangère, etc …"
* ^context[+].type = #element
* ^context[=].expression = "Resource"
* value[x] only Annotation
* valueAnnotation 1..1
