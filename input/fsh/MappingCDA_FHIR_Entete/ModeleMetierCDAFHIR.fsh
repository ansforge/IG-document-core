Instance: mappingmodelemetierCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping du modèle logique métier de l'en-tête /CDA / FHIR"
Description: """Ce ConceptMap présente trois groupes de mapping :
 - Groupe Mapping 1 : entre le modèle logique métier de l'en-tête et l'élément CDA clinicalDocument
 - Groupe Mapping 2 : entre l'élément CDA clinicalDocument et le profil FHIR FrBundleDocument
 - Groupe Mapping 3 : entre l'élément CDA clinicalDocument et le profil FHIR FrCompositionDocument"""

* name = "Mapping du modèle logique métier de l'en-tête/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : Modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
* group[=].element[+].code = #EnteteDocument.identifiantUniqueDocument
* group[=].element[=].target.code = #ClinicalDocument.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.modeleDocument
* group[=].element[=].target.code = #ClinicalDocument.templateId
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.typeDocument
* group[=].element[=].target.code = #ClinicalDocument.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.titreDocument
* group[=].element[=].target.code = #ClinicalDocument.title
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.dateDeCreationDocument
* group[=].element[=].target.code = #ClinicalDocument.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.niveauConfidentialiteDocument
* group[=].element[=].target.code = #ClinicalDocument.confidentialityCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.languePrincipaleDocument
* group[=].element[=].target.code = #ClinicalDocument.languageCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.identifiantLotDeVersionsDocument
* group[=].element[=].target.code = #ClinicalDocument.setId
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.versionDocument
* group[=].element[=].target.code = #ClinicalDocument.versionNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.StatutDocument
* group[=].element[=].target.code = #ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.patient
* group[=].element[=].target.code = #ClinicalDocument.recordTarget
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.auteur
* group[=].element[=].target.code = #ClinicalDocument.author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.operateurSaisie
* group[=].element[=].target.code = #ClinicalDocument.dataEnterer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.informateur
* group[=].element[=].target.code = #ClinicalDocument.informant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.structureConservation
* group[=].element[=].target.code = #ClinicalDocument.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.destinataire
* group[=].element[=].target.code = #ClinicalDocument.informationRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.responsable
* group[=].element[=].target.code = #ClinicalDocument.legalAuthenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.validateur
* group[=].element[=].target.code = #ClinicalDocument.authenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.participant
* group[=].element[=].target.code = #ClinicalDocument.participant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.prescription
* group[=].element[=].target.code = #ClinicalDocument.inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.evenement
* group[=].element[=].target.code = #ClinicalDocument.documentationOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.documentReference
* group[=].element[=].target.code = #ClinicalDocument.relatedDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.consentementAssocie
* group[=].element[=].target.code = #ClinicalDocument.authorization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.associationPriseEncharge
* group[=].element[=].target.code = #ClinicalDocument.componentOf
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : Identifiant unique du document CDA to FHIR 
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-bundle-document"
* group[=].element[+].code = #ClinicalDocument.id
* group[=].element[=].target.code = #Bundle.identifier
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
* group[=].element[+].code = #ClinicalDocument.templateId
* group[=].element[=].target.code = #Composition.meta.profile
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.code
* group[=].element[=].target.code = #Composition.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.title
* group[=].element[=].target.code = #Composition.title
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.effectiveTime
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.confidentialityCode
* group[=].element[=].target.code = #Composition.confidentiality
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.languageCode
* group[=].element[=].target.code = #Composition.language
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.setId
* group[=].element[=].target.code = #Composition.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.versionNumber
* group[=].element[=].target.code = #Composition.extension:R5-Composition-version
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = " http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version"
* group[=].element[+].code = #ClinicalDocument.documentationOf.serviceEvent.statusCode
* group[=].element[=].target.code = #Composition.status
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.recordTarget
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.author
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(PractitionerRole)"	
* group[=].element[+].code = #ClinicalDocument.dataEnterer
* group[=].element[=].target.code = #Composition.DataEntererExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"
* group[=].element[+].code = #ClinicalDocument.informant
* group[=].element[=].target.code = #Composition.extension:InformantExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension"
* group[=].element[+].code = #ClinicalDocument.custodian
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.custodian.resolve().ofType(Organization)"
* group[=].element[+].code = #ClinicalDocument.informationRecipient
* group[=].element[=].target.code = #Composition.extension:InformationRecipientExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension"
* group[=].element[+].code = #ClinicalDocument.legalAuthenticator
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.mode = 'legal'"
* group[=].element[+].code = #ClinicalDocument.authenticator
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.mode = 'professional'"
* group[=].element[+].code = #ClinicalDocument.participant
* group[=].element[=].target.code = #Composition.extension:ParticipantExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension"
* group[=].element[+].code = #ClinicalDocument.inFulfillmentOf
* group[=].element[=].target.code = #Composition.extension:OrderExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension"
* group[=].element[+].code = #ClinicalDocument.documentationOf
* group[=].element[=].target.code = #Composition.event
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.relatedDocument
* group[=].element[=].target.code = #Composition.relatesTo
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.authorization
* group[=].element[=].target.code = #Composition.extension:ConsentExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.componentOf
* group[=].element[=].target.code = #Composition.encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document"