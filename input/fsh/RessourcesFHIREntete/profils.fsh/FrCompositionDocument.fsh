// StructureDefinition for composition-document
Profile: FrCompositionDocument
Parent:  http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: fr-composition-document
Title: "FrCompositionDocument"
Description: "Ce profil est  utilisé pour représenter un document FHIR."
* . ^short = "Clinical document"
* . ^definition = "Clinical document."
//Composition.meta.profile : templateId
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Modèle du document et version du modèle"
* meta.profile contains canonical 1..1
* meta.profile[canonical] = Canonical(fr-composition-document)

* extension contains $composition-version  named version 1..1
* extension[version] ^short = "Version du document"
* extension[version] obeys comp-1

* extension contains fr-data-enterer-extension named data-enterer-extension 1..1
* extension contains fr-informant-extension named informant-extension 0..*
* extension contains fr-information-recipient-extension named informationRecipient-extension 0..*
* extension contains fr-participant-extension named participant-extension 0..*
* extension contains fr-order-extension named order-extension 0..*
* extension contains fr-consent-extension named consent-extension 0..*

* identifier ^short = "Identifiant lot de versions"
* identifier 1..1 MS
* status MS
* status ^short = "Statut du document"
* type only CodeableConcept
* type MS
* type ^short = "Type de document"
* title MS
* title ^short = "Titre du document CDA"
* title ^definition = "Les volets de contenus du CI-SIS fixent parfois le titre du document.Dans les autres cas, le titre provient soit de la saisie directe par le professionnel ou le patient/usager, soit d’une valeur par défaut générée par le logiciel et modifiable par le professionnel ou le patient/usager."
* subject 1.. MS
* subject ^short = "Patient / Usager"
* subject only Reference(FrPatientFHIRDocument)
* subject.reference 1.. MS
* date MS
* date ^short = "Date de création"
* confidentiality 1..1 MS
* confidentiality ^short = "Niveau de confidentialité"
* author MS
* author ^short = "Auteur du document"
* author ^definition = "author permet d’enregistrer un auteur du document.Un document peut avoir un ou plusieurs auteurs."
* author only Reference(FrPractitionerRoleDocument or FrPatientFHIRDocument or FrDeviceDocument)
* author.extension contains fr-author-time named time 1..1

// Slicing de attester basé sur le mode (legal/professional)
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
// Responsable du document : legalAuthenticator
* attester contains legal 1..1
* attester[legal].mode = #legal
* attester[legal].time 1..1
* attester[legal].party 1..1 
* attester[legal].party only Reference(FrPractitionerRoleDocument)
* attester[legal] ^short = "Responsable du document"
// Professionnel attestant la validité du contenu du document : authenticator
* attester contains professional 0..*
* attester[professional].mode = #professional
* attester[professional].time 1..1
* attester[legal].party 1..1 
* attester[professional].party only Reference(FrPractitionerRoleDocument)
* attester[professional] ^short = "Professionnel attestant la validité du contenu du document"

* event 1..*
  * obeys comp-2
// Slicing : code
  * code ^slicing.discriminator.type = #value
  * code ^slicing.discriminator.path = "coding.code"
  * code ^slicing.rules = #open
// Code de l’évènement documenté
  * code contains CodeEvenement 0..1
  * code[CodeEvenement] ^short = "Code de l’évènement documenté"

// translation (obligatoire pour : un CR d’imagerie et un CR d’examen de l’enfant )
  * code contains translation 0..*
  * code[translation] ^short = "translation : obligatoire pour : un CR d’imagerie et un CR d’examen de l’enfant"

* event.detail 0..1
* event.detail only Reference(FrPractitionerRoleDocument)
* event.period 0..1
* event.period ^short = "Date et heure de l’évènement documenté"

* relatesTo 1..*
* relatesTo.target[x] only Identifier or Reference(FrCompositionDocument)
* relatesTo.targetIdentifier.type 1..1
* relatesTo.targetIdentifier.system 1..1
* relatesTo.targetIdentifier.value 1..1

* custodian 1..1
* custodian only Reference(FrOrganizationDocument)
* encounter 1..1 MS
* encounter only Reference(FrEncounterDocument)

* section 1..* MS
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * ^definition = "La ressource Composition est structurée en différentes sections."

Invariant:  comp-1
Description: "La valeur de l'extension versionNumber doit être un entier."
Expression:  "value.matches('^1[0-9]{9}$')"
Severity:    #error

Invariant: comp-2
Description: "L'exécutant de l’évènement et la date et heure de l’évènement sont obligatoires dans l'acte principal."
Severity: #error
Expression: "detail.exists() implies period.exists()"
