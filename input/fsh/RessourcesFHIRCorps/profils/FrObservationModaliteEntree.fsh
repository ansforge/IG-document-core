Profile: FrObservationModaliteEntree
Parent: Observation
Id: fr-observation-modalite-entree
Title: "Observation - Fr Modalité d'entrée"
Description: "Profil Observation décrivant la modalité d'entrée du patient, dérivé de FrSimpleObservation."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Code de l'observation
* code MS
* code = #ORG-070 "Modalité d'entrée"
* code ^short = "Code fixe Modalité d'entrée"
// Valeur (jdv-modalite-entree-cisis)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis (required)
* valueCodeableConcept ^short = "Valeur provenant du JDV Modalité d'entrée CISIS"

// Participation d’un auteur
* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Participation d'un auteur au document"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)