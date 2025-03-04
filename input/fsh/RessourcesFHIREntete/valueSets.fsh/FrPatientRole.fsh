ValueSet: FRCoreValueSetContactRole
Id: fr-core-vs-contact-role
Title: "FRCoreValueSetContactRole"
Description: "ValueSet : ContactRole"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

//* include codes from system http://terminology.hl7.org/CodeSystem/v3-RoleClass

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#ECON // pour une personne à prévenir en cas d'urgence"
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#NOK  // pour une personne de confiance
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#CON  // une personne non PS ayant fourni des informations concernant le document
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER  // pour un aidant
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT  // pour une personne aidée

* ^experimental = false
