ValueSet: FRCoreParticipationTypeDestinataire
Id: fr-core-participation-type
Title: "FRCoreValueSetParticipationType"
Description: "ValueSet : ParticipationType(destinataire)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#TRC // information recipient"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP  //primary information recipient
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRCP  // tracker

* ^experimental = false