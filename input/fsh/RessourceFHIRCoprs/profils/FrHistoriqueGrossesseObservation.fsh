// StructureDefinition for FrHistoriqueGrossesse
Profile: FrHistoriqueGrossesse
Parent: Observation
Id: fr-historique-de-la-grossesse
Title: "Observation - Fr Historique de la grossesse"
Description: "Cette entrée permet de regrouper les observations relatives à un épisode de grossesse."

* identifier 1..1 MS 
  * ^short = "Identifiant de l'entrée"
* code 1..1 MS
* code.coding.system = "http://snomed.info/sct/"
* code.coding.code = #118185001
* code.coding.display = "constatation à propos de la grossesse"
* status 1..1
  * ^short = "Statut de l’entrée"
* status = #final
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Période de la grossesse"

//* encounter only Reference(Encounter) 
  * ^short = "Informations relatives aux naissances"
* hasMember 1..* MS
  * ^short = "Informations relatives à la grossesse"
* hasMember only Reference(FrObservationGrossesseDocument or FrObservationNaissanceDocument) 

* value[x] 0..0



