// StructureDefinition for FrMedication
Profile: FrMedication
Parent: Medication
Id: fr-medication
Title: "Medication - Fr Product"
Description: "FrMedication permet de décrire un médicament ou un vaccin."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code 1..1 MS
  * ^short = "Code du produit de santé"
* code only FrDocumentCodeableConcept
* code.coding ^short = "Autres codifications (CIP, UCD, ATC, MV)"
* code.coding.system from FrValueSetVaccineTranslation (required) 

//Nom de marque du produit : Extension IHE
* extension contains $ihe-ext-medication-productname named productName 1..1 MS
* extension[productName] ^short = "Nom de marque du produit." 
* form MS
* form from FrValueSetEDQM (required)
* batch.lotNumber MS 
  * ^short = "Numéro de lot"
* batch.expirationDate MS 
  * ^short = "Date d'expiration du produit"

//Code de regroupement ATC et Code du produit de santé conditionné (CIP) : Extension IHE
* extension contains $ihe-ext-medication-classification named classification 0..* MS
* extension[classification] ^short = "Équivalent générique (Code de regroupement ATC) et le Conditionnement (Code du produit de santé conditionné (CIP))."

// il faut ajouter une extension de type string pour le nom de marque du conditionnement et le nom du Code de regroupement ATC ??
// utiliser l'extension IHE MedicationCharacteristic de type complex pour Présentation / conditionnement : les noms, containerPackagedMedicine/pharm:formCode, pharm:capacityQuantity 
* extension contains $ihe-ext-medication-characteristic named conditionnement  0..*
* extension[conditionnement] ^short = "Présentation / conditionnement."

* ingredient MS
  * ^short = "Substance active"
  * strength MS
    * ^short = "Dosage"
      * numerator 1..1 MS
      * denominator 1..1 MS
  * item[x] only CodeableConcept
  * itemCodeableConcept MS
  * itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs
  * itemCodeableConcept ^short = "Code SMS de la substance active"
  * itemCodeableConcept.extension contains fr-substance-name named NomSubstance 1..1 MS

Extension: FrSubstanceName
Id: fr-substance-name
Title: "Fr Substance Name"
Description: "Nom de la substance active, à utiliser en complément d’un codage."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Medication.ingredient.item"
* value[x] only string
* valueString 1..1