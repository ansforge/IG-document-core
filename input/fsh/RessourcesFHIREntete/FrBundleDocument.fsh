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
Title: "FrBundleDocument"
Description: "FrBundleDocument est utilisé pour représenter l'en-tête et le corps d'un document ."
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
* entry.search ..0
* entry.request ..0
* entry.response ..0
// Définition de l'entrée composition
* entry contains composition 1..1
* entry[composition].resource only FrCompositionDocument
// Définition de l'entrée patient
* entry contains patient 0..1
* entry[patient].resource only FrPatientFHIRDocument
// Définition de l'entrée practitionerRole
* entry contains auteur 1..*
* entry[auteur].resource only FrPractitionerRoleDocument