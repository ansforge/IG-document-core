Profile: FrMedia
Parent: Media
Id: fr-media
Title: "Media - Fr Media"
Description: "FrMedia permet de positionner une image de type gif, jpeg, png ou bm. Elle est encodée en base 64   "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Langue du contenu
* content.language 0..1
* content.language ^short = "Langue de l'image (RFC 5646)"

// Contenu image encodé en Base64
* content 1..1
* content.contentType MS
* content.contentType ^short = "Type MIME du média"
* content.data MS
* content.data ^short = "Image encodée en base64"

// Sujet concerné
* subject MS
* subject only Reference(FrPatientINSDocument or FrSpecimen)
* subject ^short = "Patient ou specimen concerné par l'image"

// actor (performer, informant, author, participant)
* operator MS
* operator.extension contains
    FrActorExtension named performer 0..* and
    FrActorExtension named author 0..* and
    FrActorExtension named informant 0..* and
    FrActorExtension named participant 0..*

* operator.extension[performer] ^short = "Performer : Personne ayant réalisé l’acte"
* operator.extension[performer].extension[type].valueCode = #PRF

* operator.extension[author] ^short = "Auteur du média"
* operator.extension[author].extension[type].valueCode = #AUT
* operator.extension[author].extension[actor].valueReference only Reference(FrDeviceDocument or FrPractitionerRoleDocument)

* operator.extension[informant] ^short = "Informateur"
* operator.extension[informant].extension[type].valueCode = #INF

* operator.extension[participant] ^short = "Participant : Personne ayant participé à l’acte"
* operator.extension[participant].extension[type].valueCode = #PART

// EntryRelationship
* basedOn 0..* 
* basedOn only Reference(ServiceRequest or CarePlan)
* basedOn ^short = "Acte ou plan de soins à l'origine de l'image"

// Reference
* partOf 0..* 
* partOf only Reference(Observation or DiagnosticReport or Procedure)
* partOf ^short = "Lien avec une ressource clinique"

/* Précondition
Proposition 1 : utiliser reasonCode */ 
* reasonCode 0..*
* reasonCode ^short = "Contexte ou justification de l'image (précondition)"

// Proposition 2 : utiliser note.text si besoin d'un texte libre
/* * note 0..*
* note.text ^short = "Commentaire libre sur la précondition"
 */