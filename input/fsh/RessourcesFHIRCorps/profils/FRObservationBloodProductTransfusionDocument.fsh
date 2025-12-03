Profile: FRObservationBloodProductTransfusionDocument
Parent: Observation
Id: fr-observation-blood-product-transfusion-document
Title: "Observation - FR Blood Product Transfusion Document"
Description: "FRObservationBloodProductTransfusionDocument permet d'indiquer s'il a eu ou pas transfusion de produit sanguin."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-145
* code.coding.display = "Transfusion de produits sanguins"

* value[x] only boolean
* valueBoolean 1..1 MS
  * ^short = "Transfusion de produit sanguin."

* insert FRRuleSetSimpleObservation