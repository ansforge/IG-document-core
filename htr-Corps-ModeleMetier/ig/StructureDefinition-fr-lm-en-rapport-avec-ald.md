# Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD)**

## Logical Model: Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-ald | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMEnRapportAvecALD |

 
Entrée En rapport avec une Affection Longue Durée (ALD) 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement Prescrit](StructureDefinition-fr-lm-traitement-prescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-en-rapport-avec-ald)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-en-rapport-avec-ald.csv), [Excel](StructureDefinition-fr-lm-en-rapport-avec-ald.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-en-rapport-avec-ald",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-ald",
  "version" : "0.1.0",
  "name" : "FRLMEnRapportAvecALD",
  "title" : "Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD)",
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
  "description" : "Entrée En rapport avec une Affection Longue Durée (ALD)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-ald",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-en-rapport-avec-ald",
        "path" : "fr-lm-en-rapport-avec-ald",
        "short" : "Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD)",
        "definition" : "Entrée En rapport avec une Affection Longue Durée (ALD)"
      },
      {
        "id" : "fr-lm-en-rapport-avec-ald.identifiant",
        "path" : "fr-lm-en-rapport-avec-ald.identifiant",
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
        "id" : "fr-lm-en-rapport-avec-ald.code",
        "path" : "fr-lm-en-rapport-avec-ald.code",
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
        "id" : "fr-lm-en-rapport-avec-ald.description",
        "path" : "fr-lm-en-rapport-avec-ald.description",
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
        "id" : "fr-lm-en-rapport-avec-ald.statut",
        "path" : "fr-lm-en-rapport-avec-ald.statut",
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
        "id" : "fr-lm-en-rapport-avec-ald.horodatage",
        "path" : "fr-lm-en-rapport-avec-ald.horodatage",
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
        "id" : "fr-lm-en-rapport-avec-ald.resultat",
        "path" : "fr-lm-en-rapport-avec-ald.resultat",
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
        "id" : "fr-lm-en-rapport-avec-ald.auteur",
        "path" : "fr-lm-en-rapport-avec-ald.auteur",
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
