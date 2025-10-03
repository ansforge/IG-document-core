Extension: FrEncounterEventCharacteristicExtension
Id: fr-event-characteristic-extension
Title: "Extension - Fr Event Characteristic Extension"
Description: "Extension permettant d'indiquer la référence à une observation représentant les caractéristiques de l'évènement."
* ^context[+].type = #element
* ^context[=].expression = "Encounter"

* valueReference only Reference(Observation)