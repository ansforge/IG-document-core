// StructureDefinition for Accidents Transfusionnels
Profile: FrAccidentsTransfusionnels
Parent: FrSimpleObservation
Id: fr-accidents-transfusionnels
Title: "Observation - Fr Accidents Transfusionnels"
Description: "FrAccidentsTransfusionnels est un profil utilisé pour décrire un accident transfusionnel."

* identifier 1..1 MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-146 " Accidents transfusionnels"
* value[x] only string
* valueString ^short = "Description sous forme textuelle de l'accident transfusionnel"