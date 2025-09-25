Profile: FrObservationHabitusModeDeVie
Parent: Observation
Id: fr-observation-habitus-mode-de-vie
Title: "Observation - Fr Habitus / Mode de vie"
Description: "Profil Observation décrivant les habitudes de vie du patient (Habitus / Mode de vie)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie de l'observation"
* category.coding 1..1
* category.coding.code = #social-history
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"

* code MS
* code only FrDocumentCodeableConcept
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-social-history-code-cisis (required)
* code ^short = "Élément observé"
* code.coding ^short = "Précision du code"

* value[x] 1..1 MS
* value[x] ^short = "Résultat de l’observation effectuée"