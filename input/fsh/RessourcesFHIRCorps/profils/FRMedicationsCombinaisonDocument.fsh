// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationsCombinaisonDocument
Parent: Medication
Id: fr-medications-combinaison-document
Title: "Medication - FR Medications Combinaison Document"
Description: "FRMedicationsCombinaisonDocument permet de décrire une combinaison de médicaments ou de vaccins."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* ingredient MS 
* ingredient.itemReference only Reference (FRMedicationDocument)