Instance: mappingmodelemetierCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
* name = "MappingModeleMetierCDAFHIR"
* title = "MappingModeleMetierCDAFHIR"
* status = #draft
* experimental = false
* description = """Mapping entre les éléments du modèle logique métier utilisés en CDA et leurs équivalents en FHIR."""
// Groupe Mapping 1 : Modèle métier 2 CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
* group[=].element[+].code = #EnteteDocument.identifiantUniqueDocument
* group[=].element[=].display = "Identifiant unique du document"
* group[=].element[=].target.code = #ClinicalDocument.id
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.modeleDocument
* group[=].element[=].display = "Modèle du document et version du modèle"
* group[=].element[=].target.code = #ClinicalDocument.templateId
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.typeDocument
* group[=].element[=].display = "Type de document"
* group[=].element[=].target.code = #ClinicalDocument.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.titre
* group[=].element[=].display = "Titre du document"
* group[=].element[=].target.code = #ClinicalDocument.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.dateDeCreation
* group[=].element[=].display = "Date de création"
* group[=].element[=].target.code = #ClinicalDocument.effectiveTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.niveauConfidentialite
* group[=].element[=].display = "Niveau de confidentialité"
* group[=].element[=].target.code = #ClinicalDocument.confidentialityCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.languePrincipaleDocument
* group[=].element[=].display = "Langue"
* group[=].element[=].target.code = #ClinicalDocument.languageCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.identifiantDuLotDeVersions
* group[=].element[=].display = "Identifiant lot de versions"
* group[=].element[=].target.code = #ClinicalDocument.setId
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.versionDocument
* group[=].element[=].display = "Version du document"
* group[=].element[=].target.code = #ClinicalDocument.versionNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EnteteDocument.statutDocument
* group[=].element[=].display = "Statut du document"
* group[=].element[=].target.code = #ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 1 : CDA 2 FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
* group[=].element[+].code = #ClinicalDocument.templateId
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.meta.profile
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.code
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.title
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.effectiveTime
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.confidentialityCode
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.confidentiality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.languageCode
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.setId
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.versionNumber
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.extension:R5-Composition-version
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping patient2CDA2FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-record-target"
* group[=].element[+].code = #EnteteDocument.patientDocument
* group[=].element[=].display = "Patient / Usager"
* group[=].element[=].target.code = #recordTarget
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-record-target"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document"
* group[=].element[+].code = #recordTarget
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
// Groupe Mapping auteur2CDA2FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-author"
* group[=].element[+].code = #EnteteDocument.auteurDocument
* group[=].element[=].display = "Auteur du document"
* group[=].element[=].target.code = #author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-author"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"
* group[=].element[+].code = #author
* group[=].element[=].display = ""
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
// Groupe Mapping informateur2CDA2FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"
* group[=].element[+].code = #EnteteDocument.informateurDocument
* group[=].element[=].display = "Informateur"
* group[=].element[=].target.code = #informant
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent			
// Groupe Mapping structureConservationDocument2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-custodian"
* group[=].element[+].code = #EnteteDocument.structureConservationDocument
* group[=].element[=].display = "Structure chargée de la conservation du document"
* group[=].element[=].target.code = #custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping destinataireDocumentt2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DestinatairePrevu"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-information-recipient"
* group[=].element[+].code = #EnteteDocument.destinataireDocument
* group[=].element[=].display = "Destinataire prévu du document"
* group[=].element[=].target.code = #informationRecipient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping responsableDocuement2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Responsable"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator"
* group[=].element[+].code = #EnteteDocument.responsableDocuement
* group[=].element[=].display = "Responsable du docuement"
* group[=].element[=].target.code = #custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping validateurDocument2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Validateur"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authenticator"
* group[=].element[+].code = #EnteteDocument.validateurDocument
* group[=].element[=].display = "Validateur du document"
* group[=].element[=].target.code = #authenticator
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping operateurSaisie2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer"
* group[=].element[+].code = #EnteteDocument.operateurSaisie
* group[=].element[=].display = "Opérateur de saisie"
* group[=].element[=].target.code = #dataEnterer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping participant2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-participant"
* group[=].element[+].code = #EnteteDocument.participant
* group[=].element[=].display = "Autres personnes / structures impliquées"
* group[=].element[=].target.code = #participant
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping associationPrescription2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/AssociationPrescription"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-inFulfillment-of"
* group[=].element[+].code = #EnteteDocument.associationPrescription
* group[=].element[=].display = "Association du document à une prescription"
* group[=].element[=].target.code = #inFulfillmentOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping evenementDocumente2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-documentation-of"
* group[=].element[+].code = #EnteteDocument.evenementDocumente
* group[=].element[=].display = "Évènement documenté"
* group[=].element[=].target.code = #documentationOfOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping documentReference2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentReference"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document"
* group[=].element[+].code = #EnteteDocument.documentReference
* group[=].element[=].display = "Document de référence"
* group[=].element[=].target.code = #relatedDocument
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping consentementAssocieAuDocument2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Consentement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization"
* group[=].element[+].code = #EnteteDocument.consentementAssocieAuDocument	
* group[=].element[=].display = "Consentement associé au document"
* group[=].element[=].target.code = #authorization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping  associationPriseEncharge2CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/AssociationPriseEncharge"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of"
* group[=].element[+].code = #EnteteDocument.associationPriseEncharge
* group[=].element[=].display = "Association du document à une prise en charge"
* group[=].element[=].target.code = #componentOf
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent