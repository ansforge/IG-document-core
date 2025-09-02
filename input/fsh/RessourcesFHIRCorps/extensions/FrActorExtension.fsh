Extension: FrActorExtension
Id: fr-actor-extension
Title: "Extension - Actor"
Description: "Extension pour représenter un acteur impliqué dans le document avec son type et sa référence."

* extension contains
    type 1..1 and
    typeCode 0..1 and
    reference 1..1

// Sous-extension type
* extension[type].value[x] only code
* extension[type].valueCode from FrValueSetActorType (required)
* extension[type] ^short = "Type d'acteur (AUT, PRF, PART, INF)"

* extension[typeCode].value[x] only CodeableConcept
* extension[typeCode] ^short = "Type de participation"

// Sous-extension reference
* extension[reference].value[x] only Reference(FrPractitionerRoleDocument or Device or FrDeviceDocument or FrOrganizationDocument or FrRelatedPersonDocument or FrPatientINSDocument or FrPatientDocument)
* extension[reference] ^short = "Référence vers le rôle du praticien dans le document"
