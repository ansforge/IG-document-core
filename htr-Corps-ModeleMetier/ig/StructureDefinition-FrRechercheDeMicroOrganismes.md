# Recherche de micro organismes - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recherche de micro organismes**

## Logical Model: Recherche de micro organismes 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRechercheDeMicroOrganismes | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrRechercheDeMicroOrganismes |

 
Entrée Recherche de micro organismes 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrRechercheDeMicroOrganismes)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRechercheDeMicroOrganismes.csv), [Excel](StructureDefinition-FrRechercheDeMicroOrganismes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRechercheDeMicroOrganismes",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRechercheDeMicroOrganismes",
  "version" : "0.1.0",
  "name" : "FrRechercheDeMicroOrganismes",
  "title" : "Recherche de micro organismes",
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
  "description" : "Entrée Recherche de micro organismes",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRechercheDeMicroOrganismes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrRechercheDeMicroOrganismes",
        "path" : "FrRechercheDeMicroOrganismes",
        "short" : "Recherche de micro organismes",
        "definition" : "Entrée Recherche de micro organismes"
      },
      {
        "id" : "FrRechercheDeMicroOrganismes.identifiant",
        "path" : "FrRechercheDeMicroOrganismes.identifiant",
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
        "id" : "FrRechercheDeMicroOrganismes.code",
        "path" : "FrRechercheDeMicroOrganismes.code",
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
        "id" : "FrRechercheDeMicroOrganismes.description",
        "path" : "FrRechercheDeMicroOrganismes.description",
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
        "id" : "FrRechercheDeMicroOrganismes.statut",
        "path" : "FrRechercheDeMicroOrganismes.statut",
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
        "id" : "FrRechercheDeMicroOrganismes.date",
        "path" : "FrRechercheDeMicroOrganismes.date",
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
        "id" : "FrRechercheDeMicroOrganismes.valeur",
        "path" : "FrRechercheDeMicroOrganismes.valeur",
        "short" : "Valeur de l’observation",
        "definition" : "Valeur de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "FrRechercheDeMicroOrganismes.auteur",
        "path" : "FrRechercheDeMicroOrganismes.auteur",
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
