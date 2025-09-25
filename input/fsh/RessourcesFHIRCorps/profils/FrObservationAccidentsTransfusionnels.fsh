// StructureDefinition for Accidents Transfusionnels
Profile: FrObservationAccidentsTransfusionnels
Parent: Observation
Id: fr-accidents-transfusionnels
Title: "Observation - Fr Accidents transfusionnels"
Description: "FrObservationAccidentsTransfusionnels est un profil utilisé pour décrire un accident transfusionnel."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-146 "Accidents transfusionnels"
* value[x] only string
* valueString 1..1 MS
* valueString ^short = "Description sous forme textuelle de l'accident transfusionnel"

// Auteur
* performer MS
* performer.extension contains FrActorExtension named author 0..1
* performer.extension[author] ^short = "Participation d'un auteur au document"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)

* insert FrRuleSetSimpleObservation