// StructureDefinition for FrMedicationsCombinaisonDocument 
Profile: FrMedicationsCombinaisonDocument
Parent: Medication
Id: fr-medication-combinaison-document
Title: "Medication - Fr Produit de santé"
Description: "FrMedicationsCombinaisonDocumen permet de décrire une combinaison de médicaments ou de vaccins."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* ingredient MS 
* ingredient.itemReference only Reference (FrMedicationDocument)