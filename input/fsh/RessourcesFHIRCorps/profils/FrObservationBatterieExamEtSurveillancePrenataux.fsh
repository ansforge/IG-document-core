Profile: FrObservationBatterieExamEtSurveillancePrenataux
Parent: Observation
Id: fr-batterie-examen-et-surveillance-prenataux
Title: "Observation - Fr Observation Batterie Examens Et Surveillance Prenataux"
Description: "Ce profil permet de lister les examens et surveillances prénataux."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code MS
* code = $LNC#XX-ANTENATALTESTINGBATTERY "ANTENATAL TESTING AND SURVEILLANCE BATTERY"

* effective[x] ^short = "Date de l'examen ou de la surveillance"

// Auteur
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains
    auteur 0..*

* performer[auteur] only Reference(FrPractitionerRoleDocument)
* performer[auteur].extension contains $event-performerFunction named performerFunction 0..*
* performer[auteur].extension[performerFunction].valueCodeableConcept.coding.code = #AUT

* component ^short = "Observations"
* component.code MS
* component.code ^short = "code du résultat"
* component.value[x] MS
* component.value[x] ^short = "valeur du résultat"

/* 
Exemple : 
* component[0].code = http://loinc.org#2345-7 "Glucose [Mass/volume] in Blood"
* component[0].valueQuantity.value = 0.92
* component[0].valueQuantity.unit = "g/L"

* component[1].code = http://loinc.org#29614-7 "Toxoplasma gondii Ab [Presence] in Serum"
* component[1].valueCodeableConcept = http://snomed.info/sct#10828004 "Positive" 
*/