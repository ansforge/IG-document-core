// StructureDefinition for FrObservationStatutDocument
Profile: FrObservationStatutDocument
Parent: Observation
Id: fr-observation-statut-document
Title: "Observation - Fr Statut du document"
Description: "Cette entrée permet d'indiquer le statut du document (son état d'avancement dans le cycle de vie du document, depuis sa création jusqu'à sa validation définitive par son responsable légal (élément 'legalAuthenticator' de l'en-tête) ainsi que la date de ce statut.."

* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* code.coding.code = #GEN-065
* code.coding.display = "Statut du document"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "Statut du document"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-document-cisis (required)

* insert FrRuleSetSimpleObservation