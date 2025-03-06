Extension: ConsentExtension
Id: fr-consent-extension
Title: "ConsentExtension"
Description: "Extension permettant d'ajouter un consentement associé au document dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Consentement associé au document"
* valueReference 1.. MS
* valueReference only Reference(Consent)