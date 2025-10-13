# Accident transfusionnel - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Accident transfusionnel**

## Logical Model: Accident transfusionnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAccidentsTransfusionnels | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAccidentsTransfusionnels |

 
Entrée Accident transfusionnel 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAccidentsTransfusionnels)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAccidentsTransfusionnels.csv), [Excel](StructureDefinition-FrAccidentsTransfusionnels.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAccidentsTransfusionnels",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAccidentsTransfusionnels",
  "version" : "0.1.0",
  "name" : "FrAccidentsTransfusionnels",
  "title" : "Accident transfusionnel",
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
  "description" : "Entrée Accident transfusionnel",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAccidentsTransfusionnels",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAccidentsTransfusionnels",
        "path" : "FrAccidentsTransfusionnels",
        "short" : "Accident transfusionnel",
        "definition" : "Entrée Accident transfusionnel"
      },
      {
        "id" : "FrAccidentsTransfusionnels.identifiant",
        "path" : "FrAccidentsTransfusionnels.identifiant",
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
        "id" : "FrAccidentsTransfusionnels.code",
        "path" : "FrAccidentsTransfusionnels.code",
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
        "id" : "FrAccidentsTransfusionnels.description",
        "path" : "FrAccidentsTransfusionnels.description",
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
        "id" : "FrAccidentsTransfusionnels.statut",
        "path" : "FrAccidentsTransfusionnels.statut",
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
        "id" : "FrAccidentsTransfusionnels.date",
        "path" : "FrAccidentsTransfusionnels.date",
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
        "id" : "FrAccidentsTransfusionnels.valeur",
        "path" : "FrAccidentsTransfusionnels.valeur",
        "short" : "Description sous forme textuelle de l'accident transfusionnel",
        "definition" : "Description sous forme textuelle de l'accident transfusionnel",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrAccidentsTransfusionnels.auteur",
        "path" : "FrAccidentsTransfusionnels.auteur",
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
