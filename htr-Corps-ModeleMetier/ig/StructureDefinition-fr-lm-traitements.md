# Modèle logique métier - FR LM Traitements - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Traitements**

## Logical Model: Modèle logique métier - FR LM Traitements 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMTraitements |

 
Section Traitements 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-traitements)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-traitements.csv), [Excel](StructureDefinition-fr-lm-traitements.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-traitements",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements",
  "version" : "0.1.0",
  "name" : "FRLMTraitements",
  "title" : "Modèle logique métier - FR LM Traitements",
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
  "description" : "Section Traitements",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-traitements",
        "path" : "fr-lm-traitements",
        "short" : "Modèle logique métier - FR LM Traitements",
        "definition" : "Section Traitements"
      },
      {
        "id" : "fr-lm-traitements.titreSection",
        "path" : "fr-lm-traitements.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-traitements.sousSection",
        "path" : "fr-lm-traitements.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-traitements.entree",
        "path" : "fr-lm-traitements.entree",
        "min" : 1
      },
      {
        "id" : "fr-lm-traitements.entree.traitements",
        "path" : "fr-lm-traitements.entree.traitements",
        "short" : "Entrée Traitement",
        "definition" : "Entrée Traitement",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
          }
        ]
      }
    ]
  }
}

```
