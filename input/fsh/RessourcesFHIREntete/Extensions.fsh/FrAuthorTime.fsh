Extension: AuthorTime
Id: fr-author-time
Title: "Author Time"
Description: "Extension permettant d'ajouter un horodatage (TS) à l'élément author d'une Composition."
* ^context.type = #fhirpath
* ^context.expression = "Composition.author"
* . ^short = "Horodatage de la participation de l’auteur."
* id 0..0
* value[x] only dateTime