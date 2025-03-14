// StructureDefinition for bundle-document
/// INVARIANTS
Invariant:  bdle-document-1
Description: "Un Bundle DOIT inclure une et une seule ressource Composition."
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error
// PROFILE
Profile: FrBundleDocument
Parent: Bundle
Id: fr-bundle-document
Title: "Fr Bundle Document"
Description: "Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document."
* . ^short = "Bundle Document"
* . ^definition = "Bundle Document."
* obeys bdle-document-1
* identifier 1..
* type = #document (exactly)
* timestamp 1..1

* entry MS
// Slicing sur entry
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Ressource Entry dans le FrBundleDocument"
* entry ^definition = "Une ressource Entry incluse dans le bundle de ressources du document"
* entry ^comment = "Doit contenir la Composition comme première entrée"

* entry.fullUrl 1.. MS
// Définition de l'entrée composition
* entry contains composition 1..1
* entry[composition].resource only FrCompositionDocument

// Définition de l'entrée patient
* entry contains patient 1..1
* entry[patient].resource only FrPatientFHIRDocument

// Définition de l'entrée practitionerRole
* entry contains practitionerRole 1..*
* entry[practitionerRole].resource only FrPractitionerRoleDocument

// Définition de l'entrée practitioner
* entry contains practitioner 1..*
* entry[practitioner].resource only FrPractitionerDocument

// Définition de l'entrée organization
* entry contains organization 1..*
* entry[organization].resource only FrOrganizationDocument

// Définition de l'entrée device
* entry contains device 1..*
* entry[device].resource only FrDeviceDocument

// Définition de l'entrée encounter
* entry contains encounter 1..*
* entry[encounter].resource only FrEncounterDocument

// Définition de l'entrée location
* entry contains location 1..*
* entry[location].resource only FrLocationDocument

// Définition de l'entrée relatedPerson
* entry contains  relatedPerson 1..*
* entry[relatedPerson].resource only FrRelatedPersonDocument