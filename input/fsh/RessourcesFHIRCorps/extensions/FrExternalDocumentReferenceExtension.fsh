Extension: FrExternalDocumentReferenceExtension
Id: fr-external-document-reference-extension
Title: "Extension - Fr External Document Reference"
Description: "Extension pour représenter le document référencé externe"

* ^context[0].type = #element
* ^context[0].expression = "Resource" 

* extension contains
    idDocument 1..1 and
    urlDocument 0..1

* extension[idDocument].valueIdentifier 1..1
  * ^short = "Identifiant du document"
* extension[urlDocument].valueUrl 0..1
  * ^short = "URL du document"