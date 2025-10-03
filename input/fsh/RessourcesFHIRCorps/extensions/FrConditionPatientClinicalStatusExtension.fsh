Extension: FrPatientClinicalStatusExtension
Id: fr-condition-patient-clinical-status-extension
Title: "Extension - Patient Clinical Status"
Description: "Extension pour représenter le statut clinique du patient avec le jeu de valeurs français CISIS."
* ^context.type = #element
* ^context.expression = "Condition"
* valueCodeableConcept 1..1
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)
* valueCodeableConcept ^short = "Statut clinique du patient"