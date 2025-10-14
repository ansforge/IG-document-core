# * Modèle logique métier du corps - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Modèle logique métier du corps**

## Logical Model: * Modèle logique métier du corps 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:CorpsDocument |

 
Eléments métier du corps d’un document 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/CorpsDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CorpsDocument.csv), [Excel](StructureDefinition-CorpsDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CorpsDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument",
  "version" : "0.1.0",
  "name" : "CorpsDocument",
  "title" : "* Modèle logique métier du corps",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CorpsDocument",
        "path" : "CorpsDocument",
        "short" : "* Modèle logique métier du corps",
        "definition" : "Eléments métier du corps d'un document"
      },
      {
        "id" : "CorpsDocument.acteImagerie",
        "path" : "CorpsDocument.acteImagerie",
        "short" : "Section Acte d'imagerie",
        "definition" : "Section Acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.addendum",
        "path" : "CorpsDocument.addendum",
        "short" : "Section Addendum",
        "definition" : "Section Addendum",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAddendum"
          }
        ]
      },
      {
        "id" : "CorpsDocument.comparaisonExamensImagerie",
        "path" : "CorpsDocument.comparaisonExamensImagerie",
        "short" : "Section Examen comparatif",
        "definition" : "Section Examen comparatif",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComparaisonExamensImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.conclusions",
        "path" : "CorpsDocument.conclusions",
        "short" : "Section Conclusions",
        "definition" : "Section Conclusions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrConclusionExamenImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.demandeExamenImagerie",
        "path" : "CorpsDocument.demandeExamenImagerie",
        "short" : "Section Demande d'examen",
        "definition" : "Section Demande d'examen",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.dispositifsMedicaux",
        "path" : "CorpsDocument.dispositifsMedicaux",
        "short" : "Section Dispositifs medicaux",
        "definition" : "Section Dispositifs medicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifsMedicaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.documentsAjoutes",
        "path" : "CorpsDocument.documentsAjoutes",
        "short" : "Section Documents ajoutés",
        "definition" : "Section Documents ajoutés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentsAjoutes"
          }
        ]
      },
      {
        "id" : "CorpsDocument.educationPatient",
        "path" : "CorpsDocument.educationPatient",
        "short" : "Section Education du patient",
        "definition" : "Section Education du patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEducationPatient"
          }
        ]
      },
      {
        "id" : "CorpsDocument.expositionRadiations",
        "path" : "CorpsDocument.expositionRadiations",
        "short" : "Section Exposition aux radiations",
        "definition" : "Section Exposition aux radiations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations"
          }
        ]
      },
      {
        "id" : "CorpsDocument.informationsCliniques",
        "path" : "CorpsDocument.informationsCliniques",
        "short" : "Section Informations cliniques",
        "definition" : "Section Informations cliniques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInformationsCliniques"
          }
        ]
      },
      {
        "id" : "CorpsDocument.objectCatalog",
        "path" : "CorpsDocument.objectCatalog",
        "short" : "Section  Object catalog",
        "definition" : "Section  Object catalog",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsExamenImagerie",
        "path" : "CorpsDocument.resultatsExamenImagerie",
        "short" : "Section Résultats d'examen d'imagerie",
        "definition" : "Section Résultats d'examen d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamenImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsExamensNonCode",
        "path" : "CorpsDocument.resultatsExamensNonCode",
        "short" : "Section Resultats d'examens (non Codée)",
        "definition" : "Section Resultats d'examens (non Codée)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensNonCode"
          }
        ]
      }
    ]
  }
}

```
