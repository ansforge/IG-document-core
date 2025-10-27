Profile: FRObservationMicroorganismDetectionDocument
Parent: Observation
Id: fr-observation-microorganism-detection-document
Title: "Observation - FR Observation Microorganism Detection Document"
Description: "FRObservationMicroorganismDetectionDocument permet d'indiquer si une recherche de micro-organismes multirésistants ou émergents a été effectuée ou pas."

* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-309 "Recherche de microorganismes multi-résistants ou émergents effectuée"

* value[x] only boolean
* valueBoolean 1..1 MS
  * ^short = "Valeur de l’observation"
  
* performer MS
* performer.extension contains FRActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FRPractitionerRoleDocument
    or FROrganizationDocument
    or FRPractitionerRoleDocument
    or FRPatientINSDocument
    )
* insert FRRuleSetSimpleObservation