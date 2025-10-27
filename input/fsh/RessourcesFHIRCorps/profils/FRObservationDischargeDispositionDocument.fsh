Profile: FRObservationDischargeDispositionDocument
Parent: Observation
Id: fr-observation-discharge-disposition-document
Title: "Observation - FR Observation Discharge Disposition Document"
Description: "FRObservationDischargeDispositionDocument Observation décrivant la modalité de sortie du patient."

// Code de l'observation
* code MS
* code = #ORG-074 "Modalité de sortie"
* code ^short = "Code fixe Modalité de sortie"

// Valeur (JDV Modalité de sortie CISIS)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Valeur provenant du JDV Modalité de sortie CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis (preferred)

// Participation d’un auteur
* performer MS
* performer.extension contains FRActorExtension named author 0..*
* performer.extension[author] ^short = "Participation d'un auteur au document"
* performer.extension[author].extension[type].valueCode = #AUT