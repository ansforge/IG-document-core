// StructureDefinition for FrObservationSyntheseMedicaleSejourDocument 
Profile: FrObservationSyntheseMedicaleSejourDocument 
Parent: Observation
Id: fr-observation-synthese-medicale-sejour-document 
Title: "Observation - Fr Synthèse médicale du séjour"
Description: "Cette entrée permet de fournir, sous forme textuelle, une synthèse médicale du séjour."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #MED-142
* code.coding.display = "Synthèse médicale"

* value[x] only string
* valueString 1..1 MS
  * ^short = "Synthèse médicale du séjour (sous forme textuelle)"

* performer MS
* performer.extension contains FrActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[reference].valueReference only Reference(
    FrPractitionerRoleDocument
    or FrOrganizationDocument
    or FrPractitionerRoleDocument
    or FrPatientINSDocument
    )

* insert FrRuleSetSimpleObservation