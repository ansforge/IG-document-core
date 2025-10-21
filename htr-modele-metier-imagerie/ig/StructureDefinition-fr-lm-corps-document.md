# * Modèle logique métier du corps - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Modèle logique métier du corps**

## Logical Model: * Modèle logique métier du corps 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-corps-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMCorpsDocument |

 
Eléments métier du corps d’un document 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-corps-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-corps-document.csv), [Excel](StructureDefinition-fr-lm-corps-document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-corps-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-corps-document",
  "version" : "0.1.0",
  "name" : "FRLMCorpsDocument",
  "title" : "* Modèle logique métier du corps",
  "status" : "draft",
  "date" : "2025-10-21T10:48:05+00:00",
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
  "description" : "Eléments métier du corps d'un document",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-corps-document",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-corps-document",
        "path" : "fr-lm-corps-document",
        "short" : "* Modèle logique métier du corps",
        "definition" : "Eléments métier du corps d'un document"
      },
      {
        "id" : "fr-lm-corps-document.acteImagerie",
        "path" : "fr-lm-corps-document.acteImagerie",
        "short" : "Section Acte d'imagerie",
        "definition" : "Section Acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.addendum",
        "path" : "fr-lm-corps-document.addendum",
        "short" : "Section Addendum",
        "definition" : "Section Addendum",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.conclusions",
        "path" : "fr-lm-corps-document.conclusions",
        "short" : "Section Conclusions",
        "definition" : "Section Conclusions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.demandeExamenImagerie",
        "path" : "fr-lm-corps-document.demandeExamenImagerie",
        "short" : "Section Demande d'examen",
        "definition" : "Section Demande d'examen",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-imagerie"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.comparaisonExamensImagerie",
        "path" : "fr-lm-corps-document.comparaisonExamensImagerie",
        "short" : "Section Examen comparatif",
        "definition" : "Section Examen comparatif",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.expositionRadiations",
        "path" : "fr-lm-corps-document.expositionRadiations",
        "short" : "Section Exposition aux radiations",
        "definition" : "Section Exposition aux radiations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.informationsCliniques",
        "path" : "fr-lm-corps-document.informationsCliniques",
        "short" : "Section Informations cliniques",
        "definition" : "Section Informations cliniques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informations-cliniques"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.objectCatalog",
        "path" : "fr-lm-corps-document.objectCatalog",
        "short" : "Section  Object catalog",
        "definition" : "Section  Object catalog",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.dispositifsMedicaux",
        "path" : "fr-lm-corps-document.dispositifsMedicaux",
        "short" : "Section Dispositifs medicaux",
        "definition" : "Section Dispositifs medicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositifs-medicaux"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.documentsAjoutes",
        "path" : "fr-lm-corps-document.documentsAjoutes",
        "short" : "Section Documents ajoutés",
        "definition" : "Section Documents ajoutés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-documents-ajoutes"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.educationPatient",
        "path" : "fr-lm-corps-document.educationPatient",
        "short" : "Section Education du patient",
        "definition" : "Section Education du patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-education-patient"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.resultatsExamensNonCode",
        "path" : "fr-lm-corps-document.resultatsExamensNonCode",
        "short" : "Section Resultats d'xamens (non Codée)",
        "definition" : "Section Resultats d'xamens (non Codée)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-non-code"
          }
        ]
      },
      {
        "id" : "fr-lm-corps-document.resultatsExamenImagerie",
        "path" : "fr-lm-corps-document.resultatsExamenImagerie",
        "short" : "Section Résultats d'examen d'imagerie",
        "definition" : "Section Résultats d'examen d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examen-imagerie"
          }
        ]
      }
    ]
  }
}

```
