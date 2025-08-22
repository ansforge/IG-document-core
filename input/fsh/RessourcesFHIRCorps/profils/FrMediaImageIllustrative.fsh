Profile: FrMediaImageIllustrative
Parent: Media
Id: fr-media-image-illustrative
Title: "Media - Fr Media Image Illustrative"
Description: "Ce profil permet de décrire     "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

//------------------------------------
// Langue du contenu
//------------------------------------
* content.language 0..1
* content.language ^short = "Langue de l'image (RFC 5646)"

//------------------------------------
// Contenu image encodé en Base64
//------------------------------------
* content 1..1
* content.contentType MS
* content.contentType ^short = "Type MIME du média"
* content.data MS
* content.data ^short = "Image encodée en base64"

//------------------------------------
// Sujet concerné
//------------------------------------
* subject MS
* subject only Reference(FrPatientINSDocument or FrSpecimen)
* subject ^short = "Patient ou specimen concerné par l'image"

/* //------------------------------------
// Participants (auteur, opérateur, participant, informant)
//------------------------------------
* operator only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)
* operator.extension contains $event-performer named performer 0..*

// Sous-extensions de event-performer : performerFunction (CodeableConcept) + actor (Reference)
* operator.extension[performer].extension contains performerFunction 0..1 and actor 1..1

* operator.extension[performer].extension[performerFunction].valueCodeableConcept from FrValueSetOperatorFunctionMedia (required)
* operator.extension[performer].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)
 */

//------------------------------------
// EntryRelationship
//------------------------------------
* basedOn 0..* 
* basedOn only Reference(ServiceRequest or CarePlan)
* basedOn ^short = "Acte ou plan de soins à l'origine de l'image"

//------------------------------------
// Reference
//------------------------------------
* partOf 0..* 
* partOf only Reference(Observation or DiagnosticReport or Procedure)
* partOf ^short = "Lien avec une ressource clinique"

//------------------------------------
// Précondition
//------------------------------------
// Proposition 1 : utiliser reasonCode
* reasonCode 0..*
* reasonCode ^short = "Contexte ou justification de l'image (précondition)"

// Proposition 2 : utiliser note.text si besoin d'un texte libre
* note 0..*
* note.text ^short = "Commentaire libre sur la précondition"
