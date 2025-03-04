ValueSet: FRNameQualifier
Id: fr-core-vs-name-qualifier
Title: "FRNameQualifier"
Description: "ValueSet : Qualifier"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#BR
* include http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#CL

* ^experimental = false
