# Administration de dérivés du sang - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administration de dérivés du sang**

## Logical Model: Administration de dérivés du sang 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationDeDerivesDuSang | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAdministrationDeDerivesDuSang |

 
Modèle logique métier de l’entrée Administration de dérivés du sang 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAdministrationDeDerivesDuSang)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAdministrationDeDerivesDuSang.csv), [Excel](StructureDefinition-FrAdministrationDeDerivesDuSang.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAdministrationDeDerivesDuSang",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationDeDerivesDuSang",
  "version" : "0.1.0",
  "name" : "FrAdministrationDeDerivesDuSang",
  "title" : "Administration de dérivés du sang",
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
  "description" : "Modèle logique métier de l'entrée Administration de dérivés du sang",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationDeDerivesDuSang",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAdministrationDeDerivesDuSang",
        "path" : "FrAdministrationDeDerivesDuSang",
        "short" : "Administration de dérivés du sang",
        "definition" : "Modèle logique métier de l'entrée Administration de dérivés du sang"
      },
      {
        "id" : "FrAdministrationDeDerivesDuSang.identifiant",
        "path" : "FrAdministrationDeDerivesDuSang.identifiant",
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
        "id" : "FrAdministrationDeDerivesDuSang.code",
        "path" : "FrAdministrationDeDerivesDuSang.code",
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
        "id" : "FrAdministrationDeDerivesDuSang.description",
        "path" : "FrAdministrationDeDerivesDuSang.description",
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
        "id" : "FrAdministrationDeDerivesDuSang.statut",
        "path" : "FrAdministrationDeDerivesDuSang.statut",
        "short" : "Statut de l’observation. Fixé à 'completed'",
        "definition" : "Statut de l’observation. Fixé à 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrAdministrationDeDerivesDuSang.date",
        "path" : "FrAdministrationDeDerivesDuSang.date",
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
        "id" : "FrAdministrationDeDerivesDuSang.valeur",
        "path" : "FrAdministrationDeDerivesDuSang.valeur",
        "short" : "Administration de dérivés du sang",
        "definition" : "Administration de dérivés du sang",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "FrAdministrationDeDerivesDuSang.auteur",
        "path" : "FrAdministrationDeDerivesDuSang.auteur",
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
