# Transfusion de produits sanguins - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transfusion de produits sanguins**

## Logical Model: Transfusion de produits sanguins 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfusionDeProduitsSanguins | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTransfusionDeProduitsSanguins |

 
Entrée Transfusion de produits sanguins 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTransfusionDeProduitsSanguins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTransfusionDeProduitsSanguins.csv), [Excel](StructureDefinition-FrTransfusionDeProduitsSanguins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTransfusionDeProduitsSanguins",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfusionDeProduitsSanguins",
  "version" : "0.1.0",
  "name" : "FrTransfusionDeProduitsSanguins",
  "title" : "Transfusion de produits sanguins",
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
  "description" : "Entrée Transfusion de produits sanguins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfusionDeProduitsSanguins",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTransfusionDeProduitsSanguins",
        "path" : "FrTransfusionDeProduitsSanguins",
        "short" : "Transfusion de produits sanguins",
        "definition" : "Entrée Transfusion de produits sanguins"
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.identifiant",
        "path" : "FrTransfusionDeProduitsSanguins.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.code",
        "path" : "FrTransfusionDeProduitsSanguins.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.description",
        "path" : "FrTransfusionDeProduitsSanguins.description",
        "short" : "Description narrative de l'entrée",
        "definition" : "Description narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.statut",
        "path" : "FrTransfusionDeProduitsSanguins.statut",
        "short" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "definition" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.date",
        "path" : "FrTransfusionDeProduitsSanguins.date",
        "short" : "Date de l'entrée",
        "definition" : "Date de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.transfusionProduitSanguin",
        "path" : "FrTransfusionDeProduitsSanguins.transfusionProduitSanguin",
        "short" : "Transfusion de produit sanguin",
        "definition" : "Transfusion de produit sanguin",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "FrTransfusionDeProduitsSanguins.auteur",
        "path" : "FrTransfusionDeProduitsSanguins.auteur",
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
