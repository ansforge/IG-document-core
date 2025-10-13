# Modalité de sortie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modalité de sortie**

## Logical Model: Modalité de sortie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteSortie | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrModaliteSortie |

 
Entrée Modalité de sortie 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrModaliteSortie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrModaliteSortie.csv), [Excel](StructureDefinition-FrModaliteSortie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrModaliteSortie",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteSortie",
  "version" : "0.1.0",
  "name" : "FrModaliteSortie",
  "title" : "Modalité de sortie",
  "status" : "draft",
  "date" : "2025-10-13T08:32:48+00:00",
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
  "description" : "Entrée Modalité de sortie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteSortie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrModaliteSortie",
        "path" : "FrModaliteSortie",
        "short" : "Modalité de sortie",
        "definition" : "Entrée Modalité de sortie"
      },
      {
        "id" : "FrModaliteSortie.identifiant",
        "path" : "FrModaliteSortie.identifiant",
        "short" : "Identifiant de l’observation",
        "definition" : "Identifiant de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrModaliteSortie.code",
        "path" : "FrModaliteSortie.code",
        "short" : "Code de l’observation",
        "definition" : "Code de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrModaliteSortie.description",
        "path" : "FrModaliteSortie.description",
        "short" : "Description narrative de l’observation",
        "definition" : "Description narrative de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrModaliteSortie.statut",
        "path" : "FrModaliteSortie.statut",
        "short" : "Statut de l’observation. Fixé à la valeur 'completed'",
        "definition" : "Statut de l’observation. Fixé à la valeur 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrModaliteSortie.date",
        "path" : "FrModaliteSortie.date",
        "short" : "Date de l’observation",
        "definition" : "Date de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrModaliteSortie.modaliteSortie",
        "path" : "FrModaliteSortie.modaliteSortie",
        "short" : "Modalité d'entrée",
        "definition" : "Modalité d'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-modalite-sortie-CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
        }
      },
      {
        "id" : "FrModaliteSortie.auteur",
        "path" : "FrModaliteSortie.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
