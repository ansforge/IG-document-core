// StructureDefinition for FrMedicationsCombinaisonDocument 
Profile: FrMedicationsCombinaisonDocument
Parent: Medication
Id: fr-medication-combinaison-document
Title: "Medication - Fr Produit de santé"
Description: "Combinaison de médicaments."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* ingredient MS 
* ingredient.itemReference only Reference (FrMedicationDocument)
