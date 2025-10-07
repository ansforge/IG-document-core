// StructureDefinition for encounterParticipant
Profile: FrDocumentReference
Parent: DocumentReference
Id: fr-document-reference
Title: "DocumentReference - Fr Document reference"
Description: "DocumentReference restreint pour les documents PDF."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant principal unique du document"
//* MasterIdentifier ^short = "Identifiant de la version du document"

// Statut du document //
* docStatus MS
* docStatus  ^short = "Statut du document"
* docStatus = #final

// Type de document attaché //
* type 1..1 MS
* type  ^short = "type du document"
* type.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1
    * ^short = "Type absent pour les documents référencés externes et internes"

* date MS
* date ^short = "Quand cette référence a été créée"

// Document attaché encodé en Base64 //
* content MS
* content ^short = "Document référencé"
* content.attachment MS
* content.attachment ^short = "Document attaché"
* content.attachment.data ^short = "Representation en B64"
* content.attachment.url ^short = "URI"

* context.encounter MS
    * ^short = "Contexte clinique du document" 
* context.encounter = Reference(FrEncounterEvent)

* context.related MS
    * ^short = "Ressources ou identifiants liés" 
