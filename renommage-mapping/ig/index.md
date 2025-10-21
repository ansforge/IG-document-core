# Accueil - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ImplementationGuide/ans.document.fr.core | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:ExampleIG |

 **Guide de mise en œuvre des documents dématérialisés produits en France dans le domaine sanitaire et le domaine médico-social.**
 Implementation guides of dematerialized health and medico-social documents produced in France. 

> **Attention !**Cet Implementation Guide n'est pas en version courante. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/[code - ig]

### Introduction

**Le partage** dans Mon espace santé et **l’échange** par messagerie sécurisée de santé **des documents médicaux et médico-sociaux permet d’améliorer la continuité et la coordination des soins**.

Le Cadre d’interopérabilité des Systèmes d’Information de Santé (CI-SIS) fixe les règles syntaxiques et sémantiques spécifiques à la France et permettant de produire ces documents afin qu’ils soient :

* compréhensibles par les professionnels des secteurs sanitaire et médico-social et les patients/usagers,
* exploitables par les SI pour permettre la mise en œuvre de services à valeurs ajoutées à partir des données structurées contenues dans ces documents.

**Ce guide présente le modèle logique générique des documents médicaux et médico-sociaux et les implémentations possibles en CDA et FHIR.**

Il fait partie du CI-SIS.

### Gouvernance

Ce guide d’implémentation FR Document Core est géré par l’Agence du Numérique en Santé (ANS).

### Droits de propriété intellectuelle

**Pour les ressources syntaxiques :**

Certaines ressources syntaxiques de ce guide sont protégées par des droits de propriété intellectuelle. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

Les principales ressources syntaxiques utilisées dans le CI-SIS sont :

* HL7® CDA® standard: CDA is copyright© Health Level Seven International (HL7®). Pour plus d’information, voir : [https://www.hl7.org/legal/ippolicy.cfm.](https://www.hl7.org/legal/ippolicy.cfm.)
* HL7® FHIR® standard: FHIR is copyright© Health Level Seven International (HL7®). Pour plus d’information, voir : [https://hl7.org/fhir/license.html.](https://hl7.org/fhir/license.html.)
* IHE Integration Profile Specification: IHE is copyright© 2025 IHE International. Pour plus d’information, voir : [https://www.ihe.net/about_ihe/governance/#Intellectual_Property](https://www.ihe.net/about_ihe/governance/#Intellectual_Property)
* DICOM® standards: DICOM is copyright© National Electrical Manufacturers Association (NEMA®). Pour plus d’information, voir : [https://www.dicomstandard.org/about-home/trademark](https://www.dicomstandard.org/about-home/trademark)

**Pour les ressources sémantiques :**

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [ExampleIG](index.md), [FRCDAAssignedAuthor](StructureDefinition-fr-cda-assigned-author.md)...Show 95 more,[FRCDAAssignedCustodian](StructureDefinition-fr-cda-assigned-custodian.md),[FRCDAAssignedEntity](StructureDefinition-fr-cda-assigned-entity.md),[FRCDAAssignedPerson](StructureDefinition-fr-cda-assigned-person.md),[FRCDAAssociatedEntity](StructureDefinition-fr-cda-associated-entity.md),[FRCDAAuthenticator](StructureDefinition-fr-cda-authenticator.md),[FRCDAAuthor](StructureDefinition-fr-cda-author.md),[FRCDAAuthoringDevice](StructureDefinition-fr-cda-authoring-device.md),[FRCDAAuthorization](StructureDefinition-fr-cda-authorization.md),[FRCDAClinicalDocument](StructureDefinition-fr-cda-clinical-document.md),[FRCDAComponentOf](StructureDefinition-fr-cda-component-of.md),[FRCDACustodian](StructureDefinition-fr-cda-custodian.md),[FRCDADataEnterer](StructureDefinition-fr-cda-data-enterer.md),[FRCDADocumentationOf](StructureDefinition-fr-cda-documentation-of.md),[FRCDAEncompassingEncounter](StructureDefinition-fr-cda-encompassing-encounter.md),[FRCDAEncounterParticipant](StructureDefinition-fr-cda-encounter-participant.md),[FRCDAHealthCareFacility](StructureDefinition-fr-cda-health-care-facility.md),[FRCDAInFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md),[FRCDAInformant](StructureDefinition-fr-cda-informant.md),[FRCDAInformationRecipient](StructureDefinition-fr-cda-information-recipient.md),[FRCDAIntendedRecipient](StructureDefinition-fr-cda-intended-recipient.md),[FRCDALegalAuthenticator](StructureDefinition-fr-cda-legal-authenticator.md),[FRCDAName](StructureDefinition-fr-cda-name.md),[FRCDAOrder](StructureDefinition-fr-cda-order.md),[FRCDAParentDocument](StructureDefinition-fr-cda-parent-document.md),[FRCDAParticipant](StructureDefinition-fr-cda-participant.md),[FRCDAPatient](StructureDefinition-fr-cda-patient.md),[FRCDAPatientRole](StructureDefinition-fr-cda-patient-role.md),[FRCDAPerformer](StructureDefinition-fr-cda-performer.md),[FRCDARecordTarget](StructureDefinition-fr-cda-record-target.md),[FRCDARelatedDocument](StructureDefinition-fr-cda-related-document.md),[FRCDARelatedEntity](StructureDefinition-fr-cda-related-entity.md),[FRCDARepresentedCustodianOrganization](StructureDefinition-fr-cda-represented-custodian-organization.md),[FRCDARepresentedOrganization](StructureDefinition-fr-cda-represented-organization.md),[FRCDAServiceEvent](StructureDefinition-fr-cda-service-event.md),[FRLMAuteur](StructureDefinition-fr-lm-auteur.md),[FRLMConsentement](StructureDefinition-fr-lm-consentement.md),[FRLMDestinatairePrevu](StructureDefinition-fr-lm-destinataire-prevu-document.md),[FRLMDocumentDeReference](StructureDefinition-fr-lm-document-reference.md),[FRLMEnteteDocument](StructureDefinition-fr-lm-entete-document.md),[FRLMEvenement](StructureDefinition-fr-lm-evenement.md),[FRLMInformateur](StructureDefinition-fr-lm-informateur.md),[FRLMOperateurSaisie](StructureDefinition-fr-lm-operateur-saisie.md),[FRLMParticipant](StructureDefinition-fr-lm-participant.md),[FRLMPatientUsager](StructureDefinition-fr-lm-patient-usager.md),[FRLMPersonneStructure](StructureDefinition-fr-lm-personne-structure.md),[FRLMPersonneStructureAuteur](StructureDefinition-fr-lm-personne-structure-auteur.md),[FRLMPrescription](StructureDefinition-fr-lm-prescription.md),[FRLMPriseEncharge](StructureDefinition-fr-lm-prise-en-charge.md),[FRLMResponsable](StructureDefinition-fr-lm-responsable.md),[FRLMStructureConservation](StructureDefinition-fr-lm-structure-conservation.md),[FRLMSystemeStructureAuteur](StructureDefinition-fr-lm-systeme-structure-auteur.md),[FRLMValidateur](StructureDefinition-fr-lm-validateur.md),[FRValueSetParticipationType](ValueSet-fr-doc-vs-participation-type.md),[FRValueSetRolePriseCharge](ValueSet-fr-doc-vs-role-prise-charge.md),[FRValueSetSavoirFaireProfessionChirurgienDentiste](ValueSet-fr-doc-vs-savoir-faire-profession-chirurgien-dentiste.md),[FRValueSetSavoirFaireProfessionInfirmier](ValueSet-fr-doc-vs-savoir-faire-profession-infirmier.md),[FRValueSetSavoirFaireProfessionPharmacien](ValueSet-fr-doc-vs-savoir-faire-profession-pharmacien.md),[FRValueSetTypeSavoirFaireProfessionChirurgienDentiste](ValueSet-fr-doc-vs-type-savoir-faire-profession-chirurgien-dentiste.md),[FRValueSetTypeSavoirFaireProfessionInfirmier](ValueSet-fr-doc-vs-type-savoir-faire-profession-infirmier.md),[FRValueSetTypeSavoirFaireProfessionMedecin](ValueSet-fr-doc-vs-type-savoir-faire-profession-medecin.md),[FRValueSetTypeSavoirFaireProfessionPharmacien](ValueSet-fr-doc-vs-type-savoir-faire-profession-pharmacien.md),[FrAuthorTimeExtension](StructureDefinition-fr-author-time.md),[FrBundleDocument](StructureDefinition-fr-bundle-document.md),[FrCompositionDocument](StructureDefinition-fr-composition-document.md),[FrDeviceAuteurDocument](StructureDefinition-fr-device-auteur-document.md),[FrEncounterDocument](StructureDefinition-fr-encounter-document.md),[FrLocationDocument](StructureDefinition-fr-location-document.md),[FrOrganizationDocument](StructureDefinition-fr-organization-document.md),[FrPatientDocument](StructureDefinition-fr-patient-document.md),[FrPatientINSDocument](StructureDefinition-fr-patient-ins-document.md),[FrPerformerEvent](StructureDefinition-fr-performer-event.md),[FrPractitionerDocument](StructureDefinition-fr-practitioner-document.md),[FrPractitionerRoleDocument](StructureDefinition-fr-practitionerRole-document.md),[FrRelatedPersonDocument](StructureDefinition-fr-related-person-document.md),[HumanNameDocument](StructureDefinition-fr-human-name-document.md),[Mapping Métier/CDA/FHIR : Entête d'un document](ConceptMap-mappingmodelemetierCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Auteur"](ConceptMap-mappingAuteurCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Consentement"](ConceptMap-mappingConsentementCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Destinataire prévu"](ConceptMap-mappingDestinatairePrevuCDAFHIR.md),[Mapping Métier/CDA/FHIR : "DocumentDeReference"](ConceptMap-mappingDocumentDeReferenceCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Evènement documenté"](ConceptMap-mappingEvenementCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Informateur"](ConceptMap-mappingInformateurCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Opérateur de saisie"](ConceptMap-mappingOperateurSaisieCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Participant"](ConceptMap-mappingParticipantCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Patient/Usager"](ConceptMap-mappingPatientCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"](ConceptMap-mappingPersonneStructureAssignedEntityFHIR.md),[Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"](ConceptMap-mappingPersonneStructureAuteurFHIR.md),[Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md),[Mapping Métier/CDA/FHIR : "Prescription"](ConceptMap-mappingPrescriptionCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Prise en charge"](ConceptMap-mappingPriseEnchargeCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Responsable du document"](ConceptMap-mappingResponsableCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"](ConceptMap-mappingStructureConservationCDAFHIR.md),[Mapping Métier/CDA/FHIR : "Système / Structure Auteur"](ConceptMap-mappingSystemeFHIR.md),[Mapping Métier/CDA/FHIR : "Validateur"](ConceptMap-mappingValidateurCDAFHIR.md)and[Mapping ValueSet AdministrativeGender](ConceptMap-mappingAdministrativeGender.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [FrCompositionDocument](StructureDefinition-fr-composition-document.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [identifierType](http://terminology.hl7.org/6.5.0/CodeSystem-v2-0203.html): [FrPatientDocument](StructureDefinition-fr-patient-document.md) and [FrPatientINSDocument](StructureDefinition-fr-patient-ins-document.md)
* [ParticipationType](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ParticipationType.html): [FRValueSetParticipationType](ValueSet-fr-doc-vs-participation-type.md) and [FrCompositionDocument](StructureDefinition-fr-composition-document.md)
* [RoleClass](http://terminology.hl7.org/6.5.0/CodeSystem-v3-RoleClass.html): [FRCDARelatedEntity](StructureDefinition-fr-cda-related-entity.md) and [FrPatientINSDocument](StructureDefinition-fr-patient-ins-document.md)


Les terminologies publiées sur le [Serveur Multi-terminologies (SMT)](https://smt.esante.gouv.fr/) de l’ANS précisent la licence d’utilisation associée.

Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l’unité de production.

### Dépendances












## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.document.fr.core",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ImplementationGuide/ans.document.fr.core",
  "version" : "0.1.0",
  "name" : "ExampleIG",
  "title" : "ANS IG document core",
  "status" : "draft",
  "date" : "2025-10-21T14:51:34+00:00",
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
  "packageId" : "ans.document.fr.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_cda_uv_core",
      "uri" : "http://hl7.org/cda/stds/core/ImplementationGuide/hl7.cda.uv.core",
      "packageId" : "hl7.cda.uv.core",
      "version" : "2.0.0-sd"
    },
    {
      "id" : "ans_fr_terminologies",
      "uri" : "https://interop.esante.gouv.fr/terminologies/ImplementationGuide/ans.fr.terminologies",
      "packageId" : "ans.fr.terminologies",
      "version" : "1.2.0"
    },
    {
      "id" : "hl7_fhir_fr_core",
      "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
      "packageId" : "hl7.fhir.fr.core",
      "version" : "2.1.0"
    },
    {
      "id" : "ans_fhir_fr_annuaire",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/ImplementationGuide/ans.fhir.fr.annuaire",
      "packageId" : "ans.fhir.fr.annuaire",
      "version" : "1.1.0"
    },
    {
      "id" : "hl7_fhir_uv_fhir_clinical_document",
      "uri" : "http://hl7.org/fhir/uv/fhir-clinical-document/ImplementationGuide/hl7.fhir.uv.fhir-clinical-document",
      "packageId" : "hl7.fhir.uv.fhir-clinical-document",
      "version" : "1.0.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludettl"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/document/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludettl"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/document/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "grouping" : [
      {
        "id" : "Modèles logiques",
        "name" : "Modèle logique métier"
      },
      {
        "id" : "Ressources CDA",
        "name" : "Eléments CDA"
      },
      {
        "id" : "Ressources FHIR",
        "name" : "Profils FHIR"
      },
      {
        "id" : "Data Type FHIR",
        "name" : "Data Type Profiles"
      },
      {
        "id" : "Extensions FHIR",
        "name" : "Extensions FHIR"
      },
      {
        "id" : "Mapping",
        "name" : "Concept Maps"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/BIO-CR-BIO-2024.01-glycemie-mole"
        },
        "name" : "BIO-CR-BIO_2024.01_Glycemie_mole",
        "description" : "Compte-rendu d’examens de biologie médicale autoprésentable (BIO-CR-BIO_Glycémie mole_1_2021.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/BIO-CR-BIO-2024.01-Microbiologie-V1"
        },
        "name" : "BIO-CR-BIO_2024.01_Microbiologie_V1",
        "description" : "Compte-rendu d’examens de biologie médicale - exemple Microbiologie (BIO-CR-BIO-2024.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-assigned-author"
        },
        "name" : "CDA - assignedAuthor",
        "description" : "L'élément de l'en-tête du CDA assignedAuthor contient les éléments permettant de décrire l’auteur.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-assigned-custodian"
        },
        "name" : "CDA - assignedCustodian",
        "description" : "L'élément de l'en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-assigned-entity"
        },
        "name" : "CDA - assignedEntity",
        "description" : "L'élément de l'en-tête du CDA assignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-assigned-person"
        },
        "name" : "CDA - assignedPerson",
        "description" : "L'élément de l'en-tête du CDA assignedPerson permet de décrire une personne physique.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-associated-entity"
        },
        "name" : "CDA - associatedEntity",
        "description" : "L'élément de l'en-tête du CDA associatedEntity permet de représenter les caractéristiques du professionnel et/ou de l'établissement participant.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-authenticator"
        },
        "name" : "CDA - authenticator",
        "description" : "L'élément de l'en-tête du CDA authenticator permet de représenter le professionnel (personne physique) attestant la validité du contenu du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-author"
        },
        "name" : "CDA - author",
        "description" : "L'élément de l'en-tête du CDA author permet d’enregistrer un auteur du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-authoring-device"
        },
        "name" : "CDA - authoringDevice",
        "description" : "L'élément de l'en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-authorization"
        },
        "name" : "CDA - authorization",
        "description" : "L'élément de l'en-tête du CDA authorization permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-clinical-document"
        },
        "name" : "CDA - clinicalDocument",
        "description" : "L'élément de l'en-tête CDA 'ClinicalDocument' est l’élément racine d’un document médical.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-component-of"
        },
        "name" : "CDA - componentOf",
        "description" : "L'élément de l'en-tête du CDA componentOf permet d'associer le document à une prise en charge du patient/usager.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-custodian"
        },
        "name" : "CDA - custodian",
        "description" : "L'élément de l'en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-data-enterer"
        },
        "name" : "CDA - dataEnterer",
        "description" : "L'élément de l'en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-documentation-of"
        },
        "name" : "CDA - documentationOf",
        "description" : "L'élément de l'en-tête du CDA documentationOf permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-encompassing-encounter"
        },
        "name" : "CDA - encompassingEncounter",
        "description" : "L'élément de l'en-tête du CDA encompassingEncounter permet de décrire la prise en charge du patient/usager par un professionnel ou par une structure.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-encounter-participant"
        },
        "name" : "CDA - encounterParticipant",
        "description" : "L'élément de l'en-tête du CDA encounterParticipant permet de représenter la personne impliquée dans la prise en charge du patient/usager, comme par exemple, le professionnel co-responsable, le professionnel ayant fait l'admission ou encore le professionnel ayant donné son avis quant à la prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-health-care-facility"
        },
        "name" : "CDA - healthCareFacility",
        "description" : "L'élément de l'en-tête du CDA healthCareFacility permet de représenter la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.).",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-informant"
        },
        "name" : "CDA - informant",
        "description" : "L'élément de l'en-tête du CDA informant permet d'identifier un informateur, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-information-recipient"
        },
        "name" : "CDA - informationRecipient",
        "description" : "L'élément de l'en-tête du CDA informationRecipient permet d'enregistrer une personne déclarée comme destinataire prévu du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-inFulfillment-of"
        },
        "name" : "CDA - inFulfillmentOf",
        "description" : "L'élément de l'en-tête du CDA inFulfillmentOf permet d'associer un document à une prescription.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-intended-recipient"
        },
        "name" : "CDA - intendedRecipient",
        "description" : "L'élément de l'en-tête du CDA intendedRecipient permet d'enregistrer le destinataire prévu du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-legal-authenticator"
        },
        "name" : "CDA - legalAuthenticator",
        "description" : "L'élément de l'en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l'établissement participant.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-name"
        },
        "name" : "CDA - Name",
        "description" : "L'élément de l'en-tête du CDA  correspond au nom d'une personne physique.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-order"
        },
        "name" : "CDA - order",
        "description" : "L'élément de l'en-tête du CDA order permet de représenter la prescription à l’origine de l’acte dont résulte le document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-parent-document"
        },
        "name" : "CDA - parentDocument",
        "description" : "L'élément de l'en-tête du CDA parentDocument permet de représenter le document de référence.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-participant"
        },
        "name" : "CDA - participant",
        "description" : "L'élément de l'en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-patient"
        },
        "name" : "CDA - patient",
        "description" : "L'élément de l'en-tête du CDA patient permet de représenter une personne physique.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-patient-role"
        },
        "name" : "CDA - patientRole",
        "description" : "L'élément de l'en-tête du CDA patientRole permet de décrire le patient/usager.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-performer"
        },
        "name" : "CDA - performer",
        "description" : "L'élément de l'en-tête du CDA performer permet de représenter l'exécutant de l’évènement documenté. Il est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-record-target"
        },
        "name" : "CDA - recordTarget",
        "description" : "L'élément de l'en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-related-document"
        },
        "name" : "CDA - relatedDocument",
        "description" : "L'élément de l'en-tête du CDA relatedDocument permet de référencer un document existant (à remplacer ou transformé).",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-related-entity"
        },
        "name" : "CDA - relatedEntity",
        "description" : "L'élément de l'en-tête du CDA relatedEntity permet de décrire : un informateur non professionnel, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-represented-custodian-organization"
        },
        "name" : "CDA - representedCustodianOrganization",
        "description" : "L'élément de l'en-tête du CDA representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l'identifiant, le nom, les adresses géopostales et de télécommunication.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-represented-organization"
        },
        "name" : "CDA - representedOrganization",
        "description" : "L'élément de l'en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-cda-service-event"
        },
        "name" : "CDA - serviceEvent",
        "description" : "L'élément de l'en-tête du CDA serviceEvent permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. \nL'occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l'attribut nullFlavor.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources CDA"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/eDISP-MED-2024.01"
        },
        "name" : "eDISP-MED-2024.01",
        "description" : "eDispensation de médicaments (eDISP-MED-2024.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/eP-MED-DM-2024.01-PosoNonStruct"
        },
        "name" : "eP-MED-DM_2024.01_PosoNonStruct",
        "description" : "ePrescription de médicaments et/ou de dispositifs médicaux (eP-MED-DM_2024.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/eP-MED-DM-2024.01-PosoStruct"
        },
        "name" : "eP-MED-DM_2024.01_PosoStruct",
        "description" : "ePrescription de médicaments et/ou de dispositifs médicaux (eP-MED-DM_2024.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-author-time"
        },
        "name" : "Fr Author Time Extension",
        "description" : "Extension permettant d'ajouter un horodatage (TS) à l'élément author d'une Composition.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-bundle-document"
        },
        "name" : "Fr Bundle Document",
        "description" : "Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-composition-document"
        },
        "name" : "Fr Composition Document",
        "description" : "Ce profil est utilisé pour représenter un document médical.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-device-auteur-document"
        },
        "name" : "Fr Device Document",
        "description" : "Ce profil représente le système auteur du document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-encounter-document"
        },
        "name" : "Fr Encounter Document",
        "description" : "Ce profil représente l'association du document à une prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-location-document"
        },
        "name" : "Fr Location Document",
        "description" : "Ce profil représente le lieu de la prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-organization-document"
        },
        "name" : "Fr Organization Document",
        "description" : "Ce profil représente la structure pour le compte de laquelle intervient le professionnel.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-patient-document"
        },
        "name" : "Fr Patient Document",
        "description" : "Ce profil représente le patient concerné par le document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-patient-ins-document"
        },
        "name" : "Fr Patient INS Document",
        "description" : "Ce profil représente le patient concerné par le document.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-performer-event"
        },
        "name" : "Fr Performer Event",
        "description" : "Extension permettant d'ajouter un performer à l'élément event d'une Composition.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-practitioner-document"
        },
        "name" : "Fr Practitioner Document",
        "description" : "Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-practitionerRole-document"
        },
        "name" : "Fr PractitionerRole Document",
        "description" : "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-related-person-document"
        },
        "name" : "Fr RelatedPerson Document",
        "description" : "Ce profil représente l'informateur non professionnel.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-participation-type"
        },
        "name" : "FR ValueSet Participation Type",
        "description" : "Type de participation : destinataire",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-role-prise-charge"
        },
        "name" : "Fr ValueSet RolePriseCharge",
        "description" : "Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-savoir-faire-profession-chirurgien-dentiste"
        },
        "name" : "Fr ValueSet Savoir-faire Profession Chirurgien-Dentiste",
        "description" : "Savoir-faire pour la profession 40 (Chirurgien-Dentiste)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-savoir-faire-profession-infirmier"
        },
        "name" : "Fr ValueSet Savoir-faire Profession Infirmier",
        "description" : "Savoir-faire pour la profession 60 (Infirmier)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-savoir-faire-profession-pharmacien"
        },
        "name" : "Fr ValueSet Savoir-faire Profession Pharmacien",
        "description" : "Savoir-faire pour la profession 21 (Pharmacien)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-type-savoir-faire-profession-chirurgien-dentiste"
        },
        "name" : "Fr ValueSet Type Savoir-faire Profession Chirurgien-Dentiste",
        "description" : "Type Savoir-faire pour la profession 40 (Chirurgien-Dentiste)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-type-savoir-faire-profession-infirmier"
        },
        "name" : "Fr ValueSet Type Savoir-faire Profession Infirmier",
        "description" : "Type Savoir-faire pour la profession 60 (Infirmier)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-type-savoir-faire-profession-medecin"
        },
        "name" : "Fr ValueSet Type Savoir-faire Profession Medecin",
        "description" : "Type Savoir-faire pour la profession 10 (Médecin)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-doc-vs-type-savoir-faire-profession-pharmacien"
        },
        "name" : "Fr ValueSet Type Savoir-faire Profession Pharmacien",
        "description" : "Type Savoir-faire pour la profession 21 (Pharmacien)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-human-name-document"
        },
        "name" : "Human Name Document",
        "description" : "Ce profil correspond au type de données HumanName utilisé dans le document.",
        "exampleBoolean" : false,
        "groupingId" : "Data Type FHIR"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/IPS-FR-2024.01"
        },
        "name" : "IPS-FR",
        "description" : "Volet International Patient Summary - France (IPS-FR_2024.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/LDL-SES-2022.01"
        },
        "name" : "LDL-SES_2022.01",
        "description" : "Document Lettre de liaison à la sortie d'un établissement de soins (LDL-SES_2022.01)",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-clinical-document"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingmodelemetierCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
        "description" : "Ce ConceptMap présente trois groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"EnteteDocument\\\" et l'élément CDA \\\"clinicalDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrBundleDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrCompositionDocument\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingAuteurCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"Auteur\\\" et l'élément CDA \\\"author\\\"\n - Mapping 2 : entre l'élément CDA \\\"author\\\" et l'élément FHIR \\\"Composition.author\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingConsentementCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"ConsentementAssocie\\\" et l'élément CDA \\\"authorization\\\"\n - Mapping 2 : entre l'élément CDA \\\"authorization\\\" et l'extension FHIR \\\"ConsentExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingDestinatairePrevuCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"destinataire\\\" et l'élément CDA \\\"informationRecipient\\\"\n - Mapping 2 : entre l'élément CDA \\\"informationRecipient\\\" et l'extension FHIR \\\"InformationRecipientExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingDocumentDeReferenceCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"DocumentDeReference\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"documentDeReference\\\" et l'élément CDA \\\"relatedDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedDocument\\\" et l'élément FHIR \\\"Composition.relatesTo\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingEvenementCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Evènement documenté\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 :entre le modèle métier \\\"evenement\\\" et l'élément CDA \\\"documentationOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"documentationOf\\\" et l'élément FHIR \\\"Composition.event\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingInformateurCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"informateur\\\" et l'élément CDA \\\"informant\\\"\n - Mapping 2 : entre l'élément CDA \\\"informant\\\" et l'extension FHIR \\\"InformantExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingOperateurSaisieCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"operateurSaisie\\\" et l'élément CDA \\\"dataEnterer\\\"\n - Mapping 2 : entre l'élément CDA \\\"dataEnterer\\\" et l'extension FHIR \\\"DataEntererExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingParticipantCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Participant\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"participant\\\" et l'élément CDA \\\"participant\\\"\n - Mapping 2 : entre l'élément CDA \\\"participant\\\" et l'extension FHIR \\\"ParticipantExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPatientCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Patient/Usager\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"patient\\\" et l'élément CDA \\\"recordTarget\\\"\n - Mapping 2 : entre l'élément CDA \\\"recordTarget\\\" et le profil FHIR \\\"FrPatientDocument\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPersonneStructureAssignedEntityFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (AssignedEntity)\"",
        "description" : "Ce ConceptMap de l'élément PersonneStructure présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructure\\\" et l'élément CDA \\\"assignedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedEntity\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPersonneStructureAuteurFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
        "description" : "Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPersonneStructureRelatedEntityFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (RelatedEntity)\"",
        "description" : "Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping: \n - Mapping 1 : entre le modèle métier \\\"FRLMPersonneStructure\\\" et l'élément CDA \\\"relatedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedEntity\\\" et le profil FHIR \\\"FrRelatedPersonDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"relatedEntity\\\" et l'élément FHIR \\\"Patient.contact\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPrescriptionCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prescription\\\" et l'élément CDA \\\"inFulfillmentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"inFulfillmentOf\\\" et l'extension FHIR \\\"OrderExtension\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingPriseEnchargeCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Prise en charge\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prise en charge\\\" et l'élément CDA \\\"componentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"componentOf\\\" et l'élément FHIR \\\"Composition.encounter(Encounter)\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingResponsableCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"responsable\\\" et l'élément CDA \\\"legalAuthenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"legalAuthenticator\\\" et l'élément FHIR \\\"Composition.attester\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingStructureConservationCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"structureConservation\\\" et l'élément CDA \\\"custodian\\\"\n - Mapping 2 : entre l'élément CDA \\\"custodian\\\" et l'élément FHIR \\\"Composition.custodian\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingSystemeFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\"",
        "description" : "Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"SystemeStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrDeviceDocument\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingValidateurCDAFHIR"
        },
        "name" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
        "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"validateur\\\" et l'élément CDA \\\"authenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"authenticator\\\" et l'élément FHIR \\\"Composition.attester\\\"",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/mappingAdministrativeGender"
        },
        "name" : "Mapping ValueSet AdministrativeGender",
        "description" : "Mapping entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS établi par ce ConceptMap.",
        "exampleBoolean" : false,
        "groupingId" : "Mapping"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-auteur"
        },
        "name" : "Modèle logique métier - FR LM Auteur",
        "description" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. \n- Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-consentement"
        },
        "name" : "Modèle logique métier - FR LM Consentement",
        "description" : "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-destinataire-prevu-document"
        },
        "name" : "Modèle logique métier - FR LM Destinataire prévu",
        "description" : "Personne déclarée comme destinataire prévu du document.\n- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).\n Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-document-reference"
        },
        "name" : "Modèle logique métier - FR LM Document de référence",
        "description" : "Référence un document existant (à remplacer ou transformé).",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-entete-document"
        },
        "name" : "Modèle logique métier - FR LM En-tête document",
        "description" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...).",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-informateur"
        },
        "name" : "Modèle logique métier - FR LM Informateur",
        "description" : "Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-operateur-saisie"
        },
        "name" : "Modèle logique métier - FR LM Opérateur de saisie",
        "description" : "Opérateur de saisie de la totalité ou d'une partie du contenu du document.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-participant"
        },
        "name" : "Modèle logique métier - FR LM Participant",
        "description" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-patient-usager"
        },
        "name" : "Modèle logique métier - FR LM Patient Usager",
        "description" : "Patient/Usager concerné par le document.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-personne-structure"
        },
        "name" : "Modèle logique métier - FR LM Personne et/ou Structure",
        "description" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels).",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-personne-structure-auteur"
        },
        "name" : "Modèle logique métier - FR LM Personne et/ou Structure Auteur",
        "description" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels).",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-prescription"
        },
        "name" : "Modèle logique métier - FR LM Prescription",
        "description" : "Association à une prescription à l’origine de l’acte dont résulte le document.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-prise-en-charge"
        },
        "name" : "Modèle logique métier - FR LM Prise en charge",
        "description" : "Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.\n - Exemples :\n   - Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.\n   - Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.\n - Pour un document d'expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n'a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d'activité.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-responsable"
        },
        "name" : "Modèle logique métier - FR LM Responsable",
        "description" : "Représente le responsable du document, qui est : \n - soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel. \n - soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …). \n - soit le patient/usager responsable du document d'expression personnelle \n - soit le SNR responsable du document produit via ce SNR. \n - Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-structure-conservation"
        },
        "name" : "Modèle logique métier - FR LM Structure conservation",
        "description" : "Structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-systeme-structure-auteur"
        },
        "name" : "Modèle logique métier - FR LM Système / Structure",
        "description" : "Système auteur du document",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-validateur"
        },
        "name" : "Modèle logique métier - FR LM Validateur",
        "description" : "Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-lm-evenement"
        },
        "name" : "Modèle logique métier - FR LM Évènement",
        "description" : "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant.",
        "exampleBoolean" : false,
        "groupingId" : "Modèles logiques"
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structureGenerale.html"
            }
          ],
          "nameUrl" : "structureGenerale.html",
          "title" : "Structure générale document",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "introduction.html"
                }
              ],
              "nameUrl" : "introduction.html",
              "title" : "Introduction",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "exigencesSpecifiques.html"
                }
              ],
              "nameUrl" : "exigencesSpecifiques.html",
              "title" : "Exigences spécifiques",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesCDA-struc-gen.html"
                }
              ],
              "nameUrl" : "ressourcesCDA-struc-gen.html",
              "title" : "CDA",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesFHIR-struc-gen.html"
                }
              ],
              "nameUrl" : "ressourcesFHIR-struc-gen.html",
              "title" : "FHIR",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "mappingCDA-FHIR-struc-gen.html"
                }
              ],
              "nameUrl" : "mappingCDA-FHIR-struc-gen.html",
              "title" : "Mapping CDA / FHIR",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "enteteDocument.html"
            }
          ],
          "nameUrl" : "enteteDocument.html",
          "title" : "Entête document",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesCDA-entete.html"
                }
              ],
              "nameUrl" : "ressourcesCDA-entete.html",
              "title" : "CDA",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesFHIR-entete.html"
                }
              ],
              "nameUrl" : "ressourcesFHIR-entete.html",
              "title" : "FHIR",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "mappingCDA-FHIR-entete.html"
                }
              ],
              "nameUrl" : "mappingCDA-FHIR-entete.html",
              "title" : "Mapping Métier/CDA/FHIR",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "corpsDocument.html"
            }
          ],
          "nameUrl" : "corpsDocument.html",
          "title" : "Corps d'un document",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "modelesLogiquesMetier-corps.html"
                }
              ],
              "nameUrl" : "modelesLogiquesMetier-corps.html",
              "title" : "Modèle logique métier",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesCDA-corps.html"
                }
              ],
              "nameUrl" : "ressourcesCDA-corps.html",
              "title" : "CDA",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressourcesFHIR-corps.html"
                }
              ],
              "nameUrl" : "ressourcesFHIR-corps.html",
              "title" : "FHIR",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "mappingCDA-FHIR-corps.html"
                }
              ],
              "nameUrl" : "mappingCDA-FHIR-corps.html",
              "title" : "Mapping Métier/CDA/FHIR",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "autres_ressources.html"
            }
          ],
          "nameUrl" : "autres_ressources.html",
          "title" : "Autres Ressources",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "securite.html"
                }
              ],
              "nameUrl" : "securite.html",
              "title" : "Sécurité",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "downloads.html"
                }
              ],
              "nameUrl" : "downloads.html",
              "title" : "Téléchargements et usages",
              "generation" : "markdown"
            }
          ]
        }
      ]
    },
    "parameter" : [
      {
        "code" : "generate-turtle",
        "value" : "false"
      },
      {
        "code" : "generate-json",
        "value" : "false"
      },
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
