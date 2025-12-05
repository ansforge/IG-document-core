# Mapping Métier/CDA/FHIR : Entête d'un document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : Entête d'un document**

## ConceptMap: Mapping Métier/CDA/FHIR : Entête d'un document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingmodelemetierCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : Entête d'un document |

 
Ce ConceptMap présente trois groupes de mapping : 
* Mapping 1 : entre le modèle métier "EnteteDocument" et l’élément CDA "clinicalDocument"
* Mapping 2 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md) to [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md)

* **Code source**: FRLMEnteteDocument.identifiantUniqueDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.id
* **Code source**: FRLMEnteteDocument.modeleDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.templateId
* **Code source**: FRLMEnteteDocument.typeDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.code
* **Code source**: FRLMEnteteDocument.titreDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.title
* **Code source**: FRLMEnteteDocument.dateDeCreationDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.effectiveTime
* **Code source**: FRLMEnteteDocument.niveauConfidentialiteDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.confidentialityCode
* **Code source**: FRLMEnteteDocument.languePrincipaleDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.languageCode
* **Code source**: FRLMEnteteDocument.identifiantLotDeVersionsDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.setId
* **Code source**: FRLMEnteteDocument.versionDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.versionNumber
* **Code source**: FRLMEnteteDocument.StatutDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* **Code source**: FRLMEnteteDocument.patient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.recordTarget
* **Code source**: FRLMEnteteDocument.auteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.author
* **Code source**: FRLMEnteteDocument.operateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.dataEnterer
* **Code source**: FRLMEnteteDocument.informateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.informant
* **Code source**: FRLMEnteteDocument.structureConservation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.custodian
* **Code source**: FRLMEnteteDocument.destinataire
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.informationRecipient
* **Code source**: FRLMEnteteDocument.responsable
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.legalAuthenticator
* **Code source**: FRLMEnteteDocument.validateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.authenticator
* **Code source**: FRLMEnteteDocument.participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.participant
* **Code source**: FRLMEnteteDocument.prescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.inFulfillmentOf
* **Code source**: FRLMEnteteDocument.evenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.documentationOf
* **Code source**: FRLMEnteteDocument.documentDeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.relatedDocument
* **Code source**: FRLMEnteteDocument.consentementAssocie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.authorization
* **Code source**: FRLMEnteteDocument.priseEncharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: ClinicalDocument.componentOf

-------

**Groupe 2**Mapping de [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md) to [FR Bundle Document](StructureDefinition-fr-bundle-document.md)

* **Code source**: ClinicalDocument.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Bundle.identifier

-------

**Groupe 3**Mapping de [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md) to [FR Composition Document](StructureDefinition-fr-composition-document.md)

* **Code source**: ClinicalDocument.templateId
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.meta.profile
  * **Commentaire**: 
* **Code source**: ClinicalDocument.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.type
  * **Commentaire**: 
* **Code source**: ClinicalDocument.title
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.title
  * **Commentaire**: 
* **Code source**: ClinicalDocument.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.date
  * **Commentaire**: 
* **Code source**: ClinicalDocument.confidentialityCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.confidentiality
  * **Commentaire**: 
* **Code source**: ClinicalDocument.languageCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.language
  * **Commentaire**: 
* **Code source**: ClinicalDocument.setId
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.identifier
  * **Commentaire**: 
* **Code source**: ClinicalDocument.versionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:R5-Composition-version
  * **Commentaire**: http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version
* **Code source**: ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.status
  * **Commentaire**: 
* **Code source**: ClinicalDocument.recordTarget
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.subject
  * **Commentaire**: 
* **Code source**: ClinicalDocument.author
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.author
  * **Commentaire**: Composition.author.resolve().ofType(PractitionerRole)
* **Code source**: ClinicalDocument.dataEnterer
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:data-enterer
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension
* **Code source**: ClinicalDocument.informant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:informant
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension
* **Code source**: ClinicalDocument.custodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian
  * **Commentaire**: Composition.custodian.resolve().ofType(Organization)
* **Code source**: ClinicalDocument.informationRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:informationRecipient
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension
* **Code source**: ClinicalDocument.legalAuthenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.attester
  * **Commentaire**: attester.mode = 'legal'
* **Code source**: ClinicalDocument.authenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.attester
  * **Commentaire**: attester.mode = 'professional'
* **Code source**: ClinicalDocument.participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:participant
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension
* **Code source**: ClinicalDocument.inFulfillmentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:order
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension
* **Code source**: ClinicalDocument.documentationOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event
  * **Commentaire**: 
* **Code source**: ClinicalDocument.relatedDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.relatesTo
  * **Commentaire**: 
* **Code source**: ClinicalDocument.authorization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.extension:consent
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension
* **Code source**: ClinicalDocument.componentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.encounter
  * **Commentaire**: https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingmodelemetierCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingmodelemetierCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
  "title" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T10:47:15+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Ce ConceptMap présente trois groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"EnteteDocument\\\" et l'élément CDA \\\"clinicalDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrBundleDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrCompositionDocument\\\" ",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "group" : [
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-entete-document",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
      "element" : [
        {
          "code" : "FRLMEnteteDocument.identifiantUniqueDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.modeleDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.templateId",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.typeDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.titreDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.title",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.dateDeCreationDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.niveauConfidentialiteDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.confidentialityCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.languePrincipaleDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.languageCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.identifiantLotDeVersionsDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.setId",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.versionDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.versionNumber",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.StatutDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.patient",
          "target" : [
            {
              "code" : "ClinicalDocument.recordTarget",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.auteur",
          "target" : [
            {
              "code" : "ClinicalDocument.author",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.operateurSaisie",
          "target" : [
            {
              "code" : "ClinicalDocument.dataEnterer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.informateur",
          "target" : [
            {
              "code" : "ClinicalDocument.informant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.structureConservation",
          "target" : [
            {
              "code" : "ClinicalDocument.custodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.destinataire",
          "target" : [
            {
              "code" : "ClinicalDocument.informationRecipient",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.responsable",
          "target" : [
            {
              "code" : "ClinicalDocument.legalAuthenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.validateur",
          "target" : [
            {
              "code" : "ClinicalDocument.authenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.participant",
          "target" : [
            {
              "code" : "ClinicalDocument.participant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.prescription",
          "target" : [
            {
              "code" : "ClinicalDocument.inFulfillmentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.evenement",
          "target" : [
            {
              "code" : "ClinicalDocument.documentationOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.documentDeReference",
          "target" : [
            {
              "code" : "ClinicalDocument.relatedDocument",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.consentementAssocie",
          "target" : [
            {
              "code" : "ClinicalDocument.authorization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEnteteDocument.priseEncharge",
          "target" : [
            {
              "code" : "ClinicalDocument.componentOf",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-bundle-document",
      "element" : [
        {
          "code" : "ClinicalDocument.id",
          "target" : [
            {
              "code" : "Bundle.identifier",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "ClinicalDocument.templateId",
          "target" : [
            {
              "code" : "Composition.meta.profile",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.code",
          "target" : [
            {
              "code" : "Composition.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.title",
          "target" : [
            {
              "code" : "Composition.title",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.effectiveTime",
          "target" : [
            {
              "code" : "Composition.date",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.confidentialityCode",
          "target" : [
            {
              "code" : "Composition.confidentiality",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.languageCode",
          "target" : [
            {
              "code" : "Composition.language",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.setId",
          "target" : [
            {
              "code" : "Composition.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.versionNumber",
          "target" : [
            {
              "code" : "Composition.extension:R5-Composition-version",
              "equivalence" : "equivalent",
              "comment" : " http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
          "target" : [
            {
              "code" : "Composition.status",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.recordTarget",
          "target" : [
            {
              "code" : "Composition.subject",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.author",
          "target" : [
            {
              "code" : "Composition.author",
              "equivalence" : "equivalent",
              "comment" : "Composition.author.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.dataEnterer",
          "target" : [
            {
              "code" : "Composition.extension:data-enterer",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.informant",
          "target" : [
            {
              "code" : "Composition.extension:informant",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.custodian",
          "target" : [
            {
              "code" : "Composition.custodian",
              "equivalence" : "equivalent",
              "comment" : "Composition.custodian.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.informationRecipient",
          "target" : [
            {
              "code" : "Composition.extension:informationRecipient",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.legalAuthenticator",
          "target" : [
            {
              "code" : "Composition.attester",
              "equivalence" : "equivalent",
              "comment" : "attester.mode = 'legal'"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.authenticator",
          "target" : [
            {
              "code" : "Composition.attester",
              "equivalence" : "equivalent",
              "comment" : "attester.mode = 'professional'"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.participant",
          "target" : [
            {
              "code" : "Composition.extension:participant",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.inFulfillmentOf",
          "target" : [
            {
              "code" : "Composition.extension:order",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.documentationOf",
          "target" : [
            {
              "code" : "Composition.event",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.relatedDocument",
          "target" : [
            {
              "code" : "Composition.relatesTo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.authorization",
          "target" : [
            {
              "code" : "Composition.extension:consent",
              "equivalence" : "equivalent",
              "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension"
            }
          ]
        },
        {
          "code" : "ClinicalDocument.componentOf",
          "target" : [
            {
              "code" : "Composition.encounter",
              "equivalence" : "equivalent",
              "comment" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document"
            }
          ]
        }
      ]
    }
  ]
}

```
