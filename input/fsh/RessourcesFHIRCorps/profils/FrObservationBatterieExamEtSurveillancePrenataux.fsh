Profile: FrObservationBatterieExamEtSurveillancePrenataux
Parent: Observation
Id: fr-batterie-examen-et-surveillance-prenataux
Title: "Observation - Fr Batterie examens et surveillance prénataux"
Description: "Ce profil permet de lister les examens et surveillances prénataux."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code MS
* code ^short = "Type de l'observation"
* code = $LNC#XX-ANTENATALTESTINGBATTERY "ANTENATAL TESTING AND SURVEILLANCE BATTERY"
* effective[x] ^short = "Date de l'examen ou de la surveillance"

// Auteur
* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

* component MS
* component ^short = "Observations"
* component.code MS
* component.code ^short = "code du résultat"
* component.value[x] MS
* component.value[x] ^short = "valeur du résultat"