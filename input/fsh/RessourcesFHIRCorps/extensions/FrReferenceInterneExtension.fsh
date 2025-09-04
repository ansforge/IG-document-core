
Extension: FrReferenceInterneExtension
Id: fr-reference-interne-extension
Title: "Extension - Fr Reference Interne"
Description: "Extension permettant d’associer à un profil FHIR un lien vers une pièce jointe interne (par exemple un document, une image ou tout autre support complémentaire). La valeur est une URL pointant vers cette référence interne."
* ^context[+].type = #element
* ^context[=].expression = "Resource"

* value[x] only url