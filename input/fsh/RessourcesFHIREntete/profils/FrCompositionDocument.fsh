// StructureDefinition for composition-document
Profile: FrCompositionDocument
Parent: clinical-document-composition
Id: fr-composition-document
Title: "Fr Composition Document"
Description: "Ce profil est utilisé pour représenter un document médical."

//Composition.meta.profile : templateId
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Modèle du document et version du modèle"
* meta.profile contains canonical 0..1
* meta.profile[canonical] = Canonical(fr-composition-document)

* extension[R5-Composition-version] 1..1
* extension[R5-Composition-version] ^short = "Version du document"
* extension[R5-Composition-version] obeys comp-1

// data-enterer-extension
* extension[data-enterer].extension[type] 1..1
* extension[data-enterer].extension[type] ^short = "Type de participation : opérateur de saisie"
* extension[data-enterer].extension[time] 1..1
* extension[data-enterer].extension[time] ^short = "Date de la saisie"
* extension[data-enterer].extension[party] ^short = "Opérateur"
* extension[data-enterer].extension[party].valueReference only Reference(FrPractitionerRoleDocument)

// informant-extension
* extension[informant].extension[type] 1..1 
* extension[informant].extension[type] ^short = "Type de participation : Informateur"
* extension[informant].extension[party] ^short = "Informateur"
* extension[informant].extension[party].valueReference only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument or FrPatientINSDocument or FrPatientDocument)

// information-recipient-extension
* extension[information-recipient].extension[type] 1..1 
* extension[information-recipient].extension[type] ^short = "Type de participation : destinataire"
* extension[information-recipient].extension[type].valueCodeableConcept from FRValueSetParticipationType
* extension[information-recipient].extension[party] ^short = "Destinataire"
* extension[information-recipient].extension[party].valueReference only Reference(FrPractitionerRoleDocument)

// participant-extension
* extension[participant].extension[type] 1..1 
* extension[participant].extension[type] ^short = "Type de participation"
* extension[participant].extension[type].valueCodeableConcept from $JDV_J144-ParticipationType-CISIS (required)
* extension[participant].extension[function] 0..1 
* extension[participant].extension[function] ^short = "Précision sur le rôle fonctionnel"
* extension[participant].extension[function].valueCodeableConcept from $JDV_J47-FunctionCode-CISIS (required)
* extension[participant].extension[time] 1..1 
* extension[participant].extension[time] ^short = "Date de début et/ou de fin de la participation"
* extension[participant].extension[party] ^short = "Identification du participant"
* extension[participant].extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[participant].extension[party] obeys comp-3

* language 1..1 MS
* identifier ^short = "Identifiant lot de versions"
* identifier 1..1 MS
* status MS
* status ^short = "Statut du document"
* type only CodeableConcept
* type MS
* type ^short = "Type de document"
* title MS
* title ^short = "Titre du document CDA"
* title ^definition = "Les volets de contenus du CI-SIS fixent parfois le titre du document. Dans les autres cas, le titre provient soit de la saisie directe par le professionnel ou le patient/usager, soit d’une valeur par défaut générée par le logiciel et modifiable par le professionnel ou le patient/usager."
* subject 1.. MS
* subject ^short = "Patient / Usager"
* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* subject.reference 1.. MS
* date MS
* date ^short = "Date de création"
* confidentiality 1..1 MS
* confidentiality ^short = "Niveau de confidentialité"
* author MS
* author ^short = "Auteur du document"
* author ^definition = "author permet d’enregistrer un auteur du document. Un document peut avoir un ou plusieurs auteurs."
* author only Reference(FrPractitionerRoleDocument or FrPatientINSDocument or FrPatientDocument or FrDeviceDocument)
* author.extension contains fr-author-time named time 1..1

// Responsable du document : legalAuthenticator
* attester[legal_attester] 1..1
* attester[legal_attester].mode = #legal
* attester[legal_attester].time 1..1
* attester[legal_attester].party 1..1 
* attester[legal_attester].party only Reference(FrPractitionerRoleDocument)
* attester[legal_attester] ^short = "Responsable du document"

// Professionnel attestant la validité du contenu du document : authenticator
* attester[professional_attester].mode = #professional
* attester[professional_attester].time 1..1
* attester[professional_attester].party 1..1 
* attester[professional_attester].party only Reference(FrPractitionerRoleDocument)
* attester[professional_attester] ^short = "Professionnel attestant la validité du contenu du document"

* event 1..*
  * obeys comp-2

// Slicing : Code de l’évènement documenté
  * code ^slicing.discriminator.type = #value
  * code ^slicing.discriminator.path = "coding.code"
  * code ^slicing.rules = #open

  * code contains codeEvenement 0..1
  * code[codeEvenement] ^short = "Code de l’évènement documenté"
  
  // Slicing : Translation
  * code contains translation 0..*
  * code[translation] ^short = "translation : un ensemble d’équivalents de l'élément 'code' dans d’autres terminologies"

* event.detail 0..1
* event.detail only Reference(FrPractitionerRoleDocument)
* event.period ^short = "Date et heure de l’évènement documenté"

* relatesTo 1..*
* relatesTo ^short = "Document de référence"
* relatesTo.target[x] only Identifier or Reference(FrCompositionDocument)
* relatesTo.targetIdentifier.type 1..1
* relatesTo.targetIdentifier.system 1..1
* relatesTo.targetIdentifier.value 1..1

* relatesTo[replaced_document] 0..1
* relatesTo[replaced_document].code = #replaces

* relatesTo contains transformed_document 0..1 
* relatesTo[transformed_document].code = #transforms

* custodian 1..1
* custodian ^short = "Structure chargée de la conservation du document"
* custodian only Reference(FrOrganizationDocument)
* encounter 1..1 MS
* encounter only Reference(FrEncounterDocument)

* section 1..* MS
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * ^definition = "La ressource Composition est structurée en différentes sections."

/// INVARIANTS
Invariant:  comp-1
Description: "La valeur de l'extension versionNumber doit être un entier."
Expression:  "value.matches('^1[0-9]{9}$')"
Severity:    #error

Invariant: comp-2
Description: "L'exécutant de l’évènement et la date et heure de l’évènement sont obligatoires dans l'acte principal."
Severity: #error
Expression: "detail.exists() implies period.exists()"

Invariant: comp-3
Description: "La valeur du PractitionerRole.code dans l'extension[party]' doit être 'PROV' ou 'AGNT'."
Expression: "value.resolve().code.coding.code.contains('PROV') or value.resolve().code.coding.code.contains('AGNT')"
Severity: #error