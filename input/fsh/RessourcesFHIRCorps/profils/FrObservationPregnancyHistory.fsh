// StructureDefinition for FrObservationPregnancyHistory 
Profile: FrObservationPregnancyHistory 
Parent: Observation
Id: fr-observation-pregnancy-history 
Title: "Observation - Fr Pregnancy History  "
Description: "FrObservationPregnancyHistory permet de regrouper les observations relatives à un épisode de grossesse."

* identifier 1..1 MS 
  * ^short = "Identifiant de l'observation"
* code 1..1 MS
* code.coding.system = "http://snomed.info/sct/"
* code.coding.code = #118185001
* code.coding.display = "constatation à propos de la grossesse"
* status 1..1
  * ^short = "Statut de l'observation"
* status = #final
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Période de la grossesse"

* hasMember 1..* MS
  * ^short = "Informations relatives à la grossesse"
* hasMember only Reference(FrObservationPregnancy or FrObservationBirthEvent) 

* value[x] 0..0