// StructureDefinition for composition-document
Profile: FrCompositionDocument
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: fr-Composition-document
Title: "FrCompositionDocument"
Description: "Clinical document utilisé pour représenter un document FHIR."
* . ^short = "Clinical document"
* . ^definition = "Clinical document."
//Composition.meta.profile : templateId
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Modèle du document et version du modèle"
* meta.profile contains canonical 1..1
* meta.profile[canonical] = Canonical(fr-Composition-document)

* extension[versionNumber] obeys MustBeInteger

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
* attester contains professional 1..1
* attester[professional].mode = #professional
* attester[professional].time 1..1
* attester[legal].party 1..1 
* attester[professional].party only Reference(FrPractitionerRoleDocument)
* attester[professional] ^short = "Professionnel attestant la validité du contenu du document"

* custodian MS
* relatesTo.target[x] only Identifier or Reference(Composition or FrCompositionDocument)

* extension contains fr-data-enterer-extension named data-enterer 1..1

* section 1..* MS
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * ^definition = "La ressource Composition est structurée en différentes sections."

Invariant:  MustBeInteger
Description: "La valeur de l'extension versionNumber doit être un entier."
Expression:  "value.matches('^1[0-9]{9}$')"
Severity:    #error