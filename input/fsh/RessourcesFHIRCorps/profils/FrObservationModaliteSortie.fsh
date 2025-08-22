Profile: FrObservationModaliteSortie
Parent: Observation
Id: fr-observation-modalite-sortie
Title: "FR - Modalité de sortie"
Description: "Profil Observation décrivant la modalité de sortie du patient, dérivé de FrSimpleObservation."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

//------------------------------------
// Code de l'observation
//------------------------------------
* code MS
* code = #ORG-074 "Modalité de sortie"
* code ^short = "Code fixe Modalité de sortie"

//------------------------------------
// Valeur (JDV Modalité de sortie CISIS)
//------------------------------------
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Valeur provenant du JDV Modalité de sortie CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
* valueCodeableConcept from http://smt.esante.gouv.fr/fhir/ValueSet/JDV_ModaliteSortie_CISIS (preferred)

//------------------------------------
// Participation d’un auteur
//------------------------------------
* performer 0..1 MS
* performer only Reference(FrPractitionerRoleDocument)
* performer ^short = "Auteur du document"