Extension: FrPerformerEvent
Id: fr-performer-event
Title: "Fr Performer Event"
Description: "Extension permettant d'ajouter un perfomer à l'élément event d'une Composition."
* ^context.type = #element
* ^context.expression = "Composition.event"
* . ^short = "Exécutant de l’évènement documenté"
* valueReference only Reference(FrPractitionerRoleDocument)