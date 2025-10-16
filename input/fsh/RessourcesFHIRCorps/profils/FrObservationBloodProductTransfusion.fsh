Profile: FrObservationBloodProductTransfusion
Parent: Observation
Id: fr-observation-blood-product-transfusion
Title: "Observation - Fr Blood Product Transfusion"
Description: "FrObservationBloodProductTransfusion permet d'indiquer s'il a eu ou pas transfusion de produit sanguin."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-145
* code.coding.display = "Transfusion de produits sanguins"

* value[x] only boolean
* valueBoolean 1..1 MS
  * ^short = "Transfusion de produit sanguin."

* performer MS
* performer.extension contains FrActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument
    or FrOrganizationDocument
    or FrPractitionerRoleDocument
    or FrPatientINSDocument
    )
* insert FrRuleSetSimpleObservation