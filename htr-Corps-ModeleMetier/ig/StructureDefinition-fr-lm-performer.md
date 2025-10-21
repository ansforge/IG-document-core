# Modèle logique métier - FR LM Performer - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Performer**

## Logical Model: Modèle logique métier - FR LM Performer 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-performer | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMPerformer |

 
de l’élément Performer 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-performer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-performer.csv), [Excel](StructureDefinition-fr-lm-performer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-performer",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-performer",
  "version" : "0.1.0",
  "name" : "FRLMPerformer",
  "title" : "Modèle logique métier - FR LM Performer",
  "status" : "draft",
  "date" : "2025-10-21T12:36:21+00:00",
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
  "description" : " de l'élément Performer ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-performer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-performer",
        "path" : "fr-lm-performer",
        "short" : "Modèle logique métier - FR LM Performer",
        "definition" : " de l'élément Performer "
      },
      {
        "id" : "fr-lm-performer.roleFonctionnel",
        "path" : "fr-lm-performer.roleFonctionnel",
        "short" : "Rôle fonctionnel",
        "definition" : "Rôle fonctionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-performer.dateExecution",
        "path" : "fr-lm-performer.dateExecution",
        "short" : "Date de l’exécution",
        "definition" : "Date de l’exécution",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-lm-performer.executant",
        "path" : "fr-lm-performer.executant",
        "short" : "Exécutant",
        "definition" : "Exécutant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure"
          }
        ]
      }
    ]
  }
}

```
