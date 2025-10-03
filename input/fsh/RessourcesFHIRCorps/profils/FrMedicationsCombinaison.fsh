// StructureDefinition for FrMedicationsCombinaison 
Profile: FrMedicationsCombinaison
Parent: Medication
Id: fr-medication-combinaison
Title: "Medication - Fr Product Combinaison"
Description: "FrMedicationsCombinaison permet de décrire une combinaison de médicaments ou de vaccins."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* ingredient MS 
* ingredient.itemReference only Reference (FrMedication)