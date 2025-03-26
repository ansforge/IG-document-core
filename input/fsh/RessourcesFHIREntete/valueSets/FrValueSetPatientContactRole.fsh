ValueSet: FRValueSetPatientContactRole
Id: fr-doc-vs-patient-contact-role
Title: "FR ValueSet Patient Contact Role"
Description: "Rôle joué par la personne"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#ECON // pour une personne à prévenir en cas d'urgence"
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#NOK  // pour une personne de confiance
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#CON  // une personne non PS ayant fourni des informations concernant le document
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER  // pour un aidant
* include http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT  // pour une personne aidée

* ^experimental = false
