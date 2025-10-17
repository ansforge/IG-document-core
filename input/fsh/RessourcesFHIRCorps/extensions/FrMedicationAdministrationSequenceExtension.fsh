Extension: FrMedicationAdministrationSequenceExtension
Id: fr-sequence-extension
Title: "Extension - Fr Sequence"
Description: "Extension utilisée dans le contexte de MedicationAdministration pour indiquer l’ordre d’une prise dans le cadre d’un schéma de traitement comportant des dosages progressifs ou fractionnés. La valeur est un entier (integer) représentant le numéro de séquence de l’administration."
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only integer
* valueInteger 0..1