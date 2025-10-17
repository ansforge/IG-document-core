Profile: FrCarePlan
Parent: CarePlan
Id: fr-care-plan
Title: "CarePlan - Fr Medication Treatment Plan"
Description: "FrCarePlan est un profil permettant d’enregistrer une référence à un traitement dans un plan de traitement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
  * ^short = "Identifiant de la ligne de traitement dans un plan de traitement."
* category 1..1 MS
  * ^short = "Code indiquant que la référence est une ligne de traitement dans un plan de traitement."
* category.coding 1..1
* category.coding.system = "urn:1.3.6.1.4.1.19376.1.9.2.2"
* category.coding.code = #IHEPharmacyItemTypeList
* category.coding.display = "Ligne dans un plan de traitement"
* activity.detail.product[x] MS
* activity.detail.product[x] only CodeableConcept or Reference(FrMedication or FrMedicationsCombinaison)
  * ^short = "Produit de santé"
* author MS
//Item d'un plan de traitement. Copie non modifiée de la ligne de traitement référencée
// Chaque activity doit référencer un MedicationRequest (ligne de traitement)
* activity.reference MS
* activity.reference only Reference(FrMedicationRequest)