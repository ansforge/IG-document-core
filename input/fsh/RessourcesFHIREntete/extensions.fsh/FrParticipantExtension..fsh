Extension: ParticipantExtension
Id: fr-participant-extension
Title: "ParticipantExtension"
Description: "Extension permettant d'ajouter des participants dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Participant"

* extension contains
    type 1..1 and
    time 1..1 and
    party 1..1 and
    function 0..1

* extension[type]
* extension[type] ^short = "Type de participation"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept.coding from $JDV_J144-ParticipationType-CISIS
* extension[type].valueCodeableConcept 1..1
* extension[function]
* extension[function] ^short = "Précision sur le rôle fonctionnel"
* extension[function].value[x] only CodeableConcept
* extension[function].valueCodeableConcept.coding from $JDV_J47-FunctionCode-CISIS
* extension[function].valueCodeableConcept 1..1
* extension[time]
* extension[time] ^short = "Date de début et/ou de fin de la participation"
* extension[time].value[x] only Period
* extension[time].valuePeriod 1..1
* extension[party]
* extension[party] ^short = "Identification du participant"
//* extension[party].value[x] only Reference
* extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference 1..1