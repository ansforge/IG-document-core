// StructureDefinition for Observation: Motif d'Acte
Profile: FrSimpleObservation
Parent: Observation
Id: fr-simple-observation
Title: "Observation - Fr Simple Observation"
Description: "Observation utilisée pour représenter le motif d'un acte médical (ex: douleur, pathologie, antécédent déclencheur)."

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"
* status MS
* status = #final
* status ^short = "Statut de l'observation"

* code 1..1 MS
* code ^short = "Code de l'observation"

* subject 1..1 MS
* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* subject ^short = "Patient concerné"

* effective[x] 1..1 MS
* effective[x] ^short = "Date de l'observation"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'observation"

* performer 0..* MS
* performer only Reference(FrPractitionerRoleDocument)
* performer ^short = "Auteur de l’observation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

* method MS
* method ^short = "Méthode"

