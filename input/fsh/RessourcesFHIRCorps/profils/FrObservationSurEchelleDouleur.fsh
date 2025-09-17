// StructureDefinition for FrObservationSurEchelleDouleur
Profile: FrObservationSurEchelleDouleur
Parent: Observation
Id: fr-observation-sur-echelle-douleur
Title: "Observation - Fr observation sur échelle de douleur"
Description: "FrObservationSurEchelleDouleur permet d'enregistrer l'évaluation du patient de sa douleur sur une échelle de 1 à 10."

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"

* code MS
* code.coding.system = "https://loinc.org/"
* code.coding.code = #38208-5
* code.coding.display = "Sévérité de la douleur"
* status MS
* status = #final
* status ^short = "Statut de l'observation"

* effective[x] MS
* effectiveDateTime 1..1 MS
  * ^short = "Date de l'observation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evaluation-douleur-cisis

* bodySite MS
  * ^short = "Localisation de la douleur"

* value[x] only integer
* valueInteger 1..1 MS
  * ^short = "Valeur de l'observation. entier de 0 à 10"

* extension contains FrRepeatNumberExtension named repeatNumber 0..1