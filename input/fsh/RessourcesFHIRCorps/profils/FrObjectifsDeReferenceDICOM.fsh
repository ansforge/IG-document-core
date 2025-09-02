Profile: FrObjectifsDeReferenceDICOM
Parent: Observation
Id: fr-objectifs-de-reference-dicom
Title: "Observation - Fr Objectifs De Reference DICOM"
Description: "FrObjectifsDeReferenceDICOM permet d'enregistrer les objectifs de référence d’imagerie"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code MS
* code ^short = "Code de l'observation"
* code = http://terminology.hl7.org/CodeSystem/v3-ActCode#ASSERTION "assertion"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Objectifs de référence de l'imagerie"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imagerie-objectif-reference-cisis