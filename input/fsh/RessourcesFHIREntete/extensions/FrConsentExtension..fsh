//Cette extension fait référence à la ressource Consent, indiquant le consentement d'un patient.
//Utilisée dans la ressource Composition pour documenter qu'un consentement éclairé a été obtenu, ainsi que pour préciser le type de consentement fourni.
//Aucune extension du HL7 FHIR ne permet d’enregistrer cet élément.
Extension: ConsentExtension
Id: fr-consent-extension
Title: "ConsentExtension"
Description: "Extension permettant d'ajouter un consentement associé au document dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Consentement associé au document"
* valueReference 1.. MS
* valueReference only Reference(Consent)