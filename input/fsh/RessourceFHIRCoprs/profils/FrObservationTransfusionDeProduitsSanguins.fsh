// StructureDefinition for FrObservationTransfusionDeProduitsSanguins
Profile: FrObservationTransfusionDeProduitsSanguins
Parent: Observation
Id: fr-observation-transfusion-de-produits-sanguins
Title: "Observation - Fr Transfusion De Produits Sanguins"
Description: "Cette entrée permet d'indiquer s'il a eu ou pas transfusion de produit sanguin."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-145
* code.coding.display = "Transfusion de produits sanguins"

* value[x] only boolean
* valueBoolean 1..1 MS
  * ^short = "Transfusion de produit sanguin."

* insert FrRuleSetSimpleObservation