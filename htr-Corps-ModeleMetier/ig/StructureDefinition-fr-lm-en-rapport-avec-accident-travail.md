# Modèle logique métier - FR LM En rapport avec un accident travail - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM En rapport avec un accident travail**

## Logical Model: Modèle logique métier - FR LM En rapport avec un accident travail 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-accident-travail | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMEnRapportAvecAccidentTravail |

 
Entrée En rapport avec un accident travail 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement Prescrit](StructureDefinition-fr-lm-traitement-prescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-en-rapport-avec-accident-travail)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-en-rapport-avec-accident-travail.csv), [Excel](StructureDefinition-fr-lm-en-rapport-avec-accident-travail.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-en-rapport-avec-accident-travail",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-accident-travail",
  "version" : "0.1.0",
  "name" : "FRLMEnRapportAvecAccidentTravail",
  "title" : "Modèle logique métier - FR LM En rapport avec un accident travail",
  "status" : "draft",
  "date" : "2025-10-21T08:19:27+00:00",
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
  "description" : "Entrée En rapport avec un accident travail",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-accident-travail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail",
        "path" : "fr-lm-en-rapport-avec-accident-travail",
        "short" : "Modèle logique métier - FR LM En rapport avec un accident travail",
        "definition" : "Entrée En rapport avec un accident travail"
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.identifiant",
        "path" : "fr-lm-en-rapport-avec-accident-travail.identifiant",
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
        "id" : "fr-lm-en-rapport-avec-accident-travail.code",
        "path" : "fr-lm-en-rapport-avec-accident-travail.code",
        "short" : "Catégorie de l'entrée",
        "definition" : "Catégorie de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.description",
        "path" : "fr-lm-en-rapport-avec-accident-travail.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.statut",
        "path" : "fr-lm-en-rapport-avec-accident-travail.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.horodatage",
        "path" : "fr-lm-en-rapport-avec-accident-travail.horodatage",
        "short" : "Horodatage de l'entrée",
        "definition" : "Horodatage de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.resultat",
        "path" : "fr-lm-en-rapport-avec-accident-travail.resultat",
        "short" : "Résultat de l'observation",
        "definition" : "Résultat de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-en-rapport-avec-accident-travail.auteur",
        "path" : "fr-lm-en-rapport-avec-accident-travail.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur"
          }
        ]
      }
    ]
  }
}

```
