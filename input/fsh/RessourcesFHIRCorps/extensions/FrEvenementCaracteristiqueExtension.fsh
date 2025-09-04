Extension: FrEvenementCaracteristiqueExtension
Id: fr-evenement-caracteristique-extension
Title: "Extension - Fr Caractéristique de l'évènement"
Description: "Extension permettant d'indiquer la référence à une observation représentant les caractéristiques de l'évènement."
* ^context[+].type = #element
* ^context[=].expression = "Encounter"

* valueReference only Reference(Observation)