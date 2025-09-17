// StructureDefinition for FrReferencesExternesDocument
Profile: FrReferencesExternesDocument
Parent: DocumentReference
Id: fr-references-externes-document
Title: "DocumentReference - Fr References externes"
Description: """FrReferencesExternesDocument permet de relier un élément à un (ou des) document(s) externe(s) par l’intermédiaire d’une adresse URL."""

* identifier 1..* MS
  * ^short = "Identifiant de l'entrée."
* type 1..1 MS
  * ^short = "Code de l'entrée. Fixé à nullFlavor='NA'"
* type.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1
* status 1..1 MS

// Document référencé
* content MS
* content.attachment MS
* content.attachment.url 1..1 MS
* content.attachment.contentType 1..1 MS