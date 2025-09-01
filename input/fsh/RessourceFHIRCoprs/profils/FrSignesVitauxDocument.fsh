// StructureDefinition for FrSignesVitauxDocument
Profile: FrSignesVitauxDocument
Parent: http://hl7.org/fhir/StructureDefinition/vitalspanel
Id: fr-signes-vitaux-document
Title: "Observation - Fr Signes Vitaux"
Description: "L'entrée Signes vitaux est une entrée de type 'organizer' qui permet de regrouper des informations relatives aux mesures cliniques du patient."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant de l'entrée"
* code MS 
* status MS
* status ^short = "Statut de l’entrée"
* status = #final
* effective[x] only dateTime
* effectiveDateTime MS
  * ^short = "Date de l'entrée"
* performer MS
  * ^short = "Auteur"
* performer only Reference (FrPractitionerRoleDocument)
* hasMember MS 
* hasMember only Reference (FrSigneVitalObserveDocument)