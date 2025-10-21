# Mapping Métier/CDA/FHIR : Entête d'un document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : Entête d'un document**

## ConceptMap: Mapping Métier/CDA/FHIR : Entête d'un document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingmodelemetierCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : Entête d'un document |

 
Ce ConceptMap présente trois groupes de mapping : 
* Mapping 1 : entre le modèle métier "EnteteDocument" et l’élément CDA "clinicalDocument"
* Mapping 2 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document`

* **Source Code**: EnteteDocument.identifiantUniqueDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.id
* **Source Code**: EnteteDocument.modeleDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.templateId
* **Source Code**: EnteteDocument.typeDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.code
* **Source Code**: EnteteDocument.titreDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.title
* **Source Code**: EnteteDocument.dateDeCreationDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.effectiveTime
* **Source Code**: EnteteDocument.niveauConfidentialiteDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.confidentialityCode
* **Source Code**: EnteteDocument.languePrincipaleDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.languageCode
* **Source Code**: EnteteDocument.identifiantLotDeVersionsDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.setId
* **Source Code**: EnteteDocument.versionDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.versionNumber
* **Source Code**: EnteteDocument.StatutDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* **Source Code**: EnteteDocument.patient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.recordTarget
* **Source Code**: EnteteDocument.auteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.author
* **Source Code**: EnteteDocument.operateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.dataEnterer
* **Source Code**: EnteteDocument.informateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.informant
* **Source Code**: EnteteDocument.structureConservation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.custodian
* **Source Code**: EnteteDocument.destinataire
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.informationRecipient
* **Source Code**: EnteteDocument.responsable
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.legalAuthenticator
* **Source Code**: EnteteDocument.validateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.authenticator
* **Source Code**: EnteteDocument.participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.participant
* **Source Code**: EnteteDocument.prescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.inFulfillmentOf
* **Source Code**: EnteteDocument.evenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.documentationOf
* **Source Code**: EnteteDocument.documentDeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.relatedDocument
* **Source Code**: EnteteDocument.consentementAssocie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.authorization
* **Source Code**: EnteteDocument.priseEncharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ClinicalDocument.componentOf

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document` to [Fr Bundle Document](StructureDefinition-fr-bundle-document.md)

* **Source Code**: ClinicalDocument.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Bundle.identifier

-------

**Group 3**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document` to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: ClinicalDocument.templateId
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.meta.profile
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.type
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.title
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.title
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.date
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.confidentialityCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.confidentiality
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.languageCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.language
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.setId
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.identifier
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.versionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:R5-Composition-version
  * **Commentaire**: http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version
* **Source Code**: ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.status
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.recordTarget
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.subject
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.author
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author
  * **Commentaire**: Composition.author.resolve().ofType(PractitionerRole)
* **Source Code**: ClinicalDocument.dataEnterer
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:data-enterer
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension
* **Source Code**: ClinicalDocument.informant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:informant
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension
* **Source Code**: ClinicalDocument.custodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian
  * **Commentaire**: Composition.custodian.resolve().ofType(Organization)
* **Source Code**: ClinicalDocument.informationRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:informationRecipient
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension
* **Source Code**: ClinicalDocument.legalAuthenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester
  * **Commentaire**: attester.mode = 'legal'
* **Source Code**: ClinicalDocument.authenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester
  * **Commentaire**: attester.mode = 'professional'
* **Source Code**: ClinicalDocument.participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:participant
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension
* **Source Code**: ClinicalDocument.inFulfillmentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:order
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension
* **Source Code**: ClinicalDocument.documentationOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.relatedDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.relatesTo
  * **Commentaire**: 
* **Source Code**: ClinicalDocument.authorization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.extension:consent
  * **Commentaire**: http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension
* **Source Code**: ClinicalDocument.componentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.encounter
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
  "date" : "2025-10-21T08:14:34+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document",
      "element" : [
        {
          "code" : "EnteteDocument.identifiantUniqueDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.modeleDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.templateId",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.typeDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.titreDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.title",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.dateDeCreationDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.niveauConfidentialiteDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.confidentialityCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.languePrincipaleDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.languageCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.identifiantLotDeVersionsDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.setId",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.versionDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.versionNumber",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.StatutDocument",
          "target" : [
            {
              "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.patient",
          "target" : [
            {
              "code" : "ClinicalDocument.recordTarget",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.auteur",
          "target" : [
            {
              "code" : "ClinicalDocument.author",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.operateurSaisie",
          "target" : [
            {
              "code" : "ClinicalDocument.dataEnterer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.informateur",
          "target" : [
            {
              "code" : "ClinicalDocument.informant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.structureConservation",
          "target" : [
            {
              "code" : "ClinicalDocument.custodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.destinataire",
          "target" : [
            {
              "code" : "ClinicalDocument.informationRecipient",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.responsable",
          "target" : [
            {
              "code" : "ClinicalDocument.legalAuthenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.validateur",
          "target" : [
            {
              "code" : "ClinicalDocument.authenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.participant",
          "target" : [
            {
              "code" : "ClinicalDocument.participant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.prescription",
          "target" : [
            {
              "code" : "ClinicalDocument.inFulfillmentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.evenement",
          "target" : [
            {
              "code" : "ClinicalDocument.documentationOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.documentDeReference",
          "target" : [
            {
              "code" : "ClinicalDocument.relatedDocument",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.consentementAssocie",
          "target" : [
            {
              "code" : "ClinicalDocument.authorization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "EnteteDocument.priseEncharge",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document",
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
