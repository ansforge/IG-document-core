# Modèle logique métier - FR LM Résultats d'examen d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Résultats d'examen d'imagerie**

## Logical Model: Modèle logique métier - FR LM Résultats d'examen d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examen-imagerie | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMResultatsExamenImagerie |

 
Section Résultats d’examen d’imagerie 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-resultats-examen-imagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-resultats-examen-imagerie.csv), [Excel](StructureDefinition-fr-lm-resultats-examen-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-resultats-examen-imagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examen-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMResultatsExamenImagerie",
  "title" : "Modèle logique métier - FR LM Résultats d'examen d'imagerie",
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
  "description" : "Section Résultats d'examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examen-imagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-resultats-examen-imagerie",
        "path" : "fr-lm-resultats-examen-imagerie",
        "short" : "Modèle logique métier - FR LM Résultats d'examen d'imagerie",
        "definition" : "Section Résultats d'examen d'imagerie"
      },
      {
        "id" : "fr-lm-resultats-examen-imagerie.titreSection",
        "path" : "fr-lm-resultats-examen-imagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-resultats-examen-imagerie.sousSection",
        "path" : "fr-lm-resultats-examen-imagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-resultats-examen-imagerie.entree",
        "path" : "fr-lm-resultats-examen-imagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
