# Modalité d'entrée - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modalité d'entrée**

## Logical Model: Modalité d'entrée 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteEntree | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrModaliteEntree |

 
Entrée Modalité d’entrée 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrModaliteEntree)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrModaliteEntree.csv), [Excel](StructureDefinition-FrModaliteEntree.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrModaliteEntree",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteEntree",
  "version" : "0.1.0",
  "name" : "FrModaliteEntree",
  "title" : "Modalité d'entrée",
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
  "description" : "Entrée Modalité d'entrée",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrModaliteEntree",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrModaliteEntree",
        "path" : "FrModaliteEntree",
        "short" : "Modalité d'entrée",
        "definition" : "Entrée Modalité d'entrée"
      },
      {
        "id" : "FrModaliteEntree.identifiant",
        "path" : "FrModaliteEntree.identifiant",
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
        "id" : "FrModaliteEntree.code",
        "path" : "FrModaliteEntree.code",
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
        "id" : "FrModaliteEntree.description",
        "path" : "FrModaliteEntree.description",
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
        "id" : "FrModaliteEntree.statut",
        "path" : "FrModaliteEntree.statut",
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
        "id" : "FrModaliteEntree.date",
        "path" : "FrModaliteEntree.date",
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
        "id" : "FrModaliteEntree.modaliteEntree",
        "path" : "FrModaliteEntree.modaliteEntree",
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
          "description" : "jdv-modalite-entree-cisis (1.2.250.1.213.1.1.5.73)"
        }
      },
      {
        "id" : "FrModaliteEntree.auteur",
        "path" : "FrModaliteEntree.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "*",
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
