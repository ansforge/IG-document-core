Extension: FrDocumentReferenceExterneExtension
Id: fr-document-reference-externe-extension
Title: "Fr Document Reference Externe"
Description: "Document référencé"

* ^context[0].type = #element
* ^context[0].expression = "Resource" 

* extension contains
    identifier 1..1 and
    url 0..1

* extension[identifier].valueIdentifier 1..1
  * ^short = "Identifiant du document"
* extension[url].valueUrl 0..1
  * ^short = "URL du document"