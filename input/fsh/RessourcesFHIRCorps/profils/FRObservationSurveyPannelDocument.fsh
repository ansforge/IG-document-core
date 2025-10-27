Profile: FrObservationSurveyPannel
Parent: Observation
Id: fr-observation-survey-pannel
Title: "Observation - Fr Survey pannel"
Description: "FrObservationSurveyPannel permet de rassembler des observations de questionnaires."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant de l'entrée"

* status MS
* status = #final
* status ^short = "Statut de l'entrée"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date de l'entrée"

* hasMember 1..* MS
* hasMember only Reference(FrObservationSurvey)
* hasMember ^short = "Évaluations"