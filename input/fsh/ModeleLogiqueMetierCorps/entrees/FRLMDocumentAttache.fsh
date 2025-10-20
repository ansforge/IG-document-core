Logical: FRLMDocumentAttache
Id: fr-lm-document-attache
//Parent: EHDSAttachment	
Title: "Modèle logique métier - FR LM Document attaché"
Description: """Entrée Document attaché"""
Characteristics: #can-be-target

//N'est pas utisé dans le modèle EHDSAttachment
* identifiant 1..1 Identifier "Identifiant de l'entrée"
//EHDSAttachment.contentType
* code 1..1 CodeableConcept "Code de l'entrée"
//N'est pas utisé dans le modèle EHDSAttachment
* statut 1..1 code "Statut de l'entrée"
// EHDSAttachment.data 
* date 0..1 dateTime "Date de l'entrée"
//N'est pas utisé dans le modèle EHDSAttachment
* typeDocumentAttache 1..1 Base "Type de document attaché"
// équivalent FHIR : DocumentReference.category
  * natureDocument 1..1 CodeableConcept "Nature du document"

* documentAttache 1..1 Base "Bloc document attaché"
  * observationMedia 1..1 Base "Observation média"
    * identifiant 1..1 Identifier "Identifiant de l’observationMedia"
//EHDSAttachment.data
    * documentAttacheEncode 1..1 base64Binary "Document attaché encodé en Base64"
