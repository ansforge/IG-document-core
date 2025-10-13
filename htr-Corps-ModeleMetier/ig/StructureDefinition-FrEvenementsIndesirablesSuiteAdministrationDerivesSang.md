# Evènements indésirables suite à l'administration de dérivés du sang - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evènements indésirables suite à l'administration de dérivés du sang**

## Logical Model: Evènements indésirables suite à l'administration de dérivés du sang 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementsIndesirablesSuiteAdministrationDerivesSang | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvenementsIndesirablesSuiteAdministrationDerivesSang |

 
Entrée Evènements indésirables suite à l’administration de dérivés du sang 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvenementsIndesirablesSuiteAdministrationDerivesSang)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvenementsIndesirablesSuiteAdministrationDerivesSang.csv), [Excel](StructureDefinition-FrEvenementsIndesirablesSuiteAdministrationDerivesSang.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
  "version" : "0.1.0",
  "name" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
  "title" : "Evènements indésirables suite à l'administration de dérivés du sang",
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
  "description" : "Entrée Evènements indésirables suite à l'administration de dérivés du sang",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang",
        "short" : "Evènements indésirables suite à l'administration de dérivés du sang",
        "definition" : "Entrée Evènements indésirables suite à l'administration de dérivés du sang"
      },
      {
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.identifiant",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.identifiant",
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
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.code",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.code",
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
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.description",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.description",
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
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.statut",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.statut",
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
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.date",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.date",
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
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.valeur",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.valeur",
        "short" : "Description sous forme textuelle des évènements indésirables survenus suite à l'administration de dérivés du sang.",
        "definition" : "Description sous forme textuelle des évènements indésirables survenus suite à l'administration de dérivés du sang.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.auteur",
        "path" : "FrEvenementsIndesirablesSuiteAdministrationDerivesSang.auteur",
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
