// StructureDefinition for FrCarePlanDocument
Profile: FrCarePlanDocument
Parent: CarePlan
Id: fr-care-plan-document
Title: "CarePlan - Fr Reference item plan traitement"
Description: "FrCarePlanDocument est un profil permettant d’enregistrer une référence à un traitement dans un plan de traitement."

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
* activity.detail.product[x] only CodeableConcept or Reference(FrMedicationDocument or FrMedicationsCombinaisonDocument)
  * ^short = "Produit de santé"
* author MS
//Item d'un plan de traitement. Copie non modifiée de la ligne de traitement référencée
// Chaque activity doit référencer un MedicationRequest (ligne de traitement)
* activity.reference MS
* activity.reference only Reference(FrMedicationRequestDocument)