# Modèle logique métier - FR LM Sévérité - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Sévérité**

## Logical Model: Modèle logique métier - FR LM Sévérité 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-severite | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMSeverite |

 
Entrée Sévérité. 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Problème](StructureDefinition-fr-lm-probleme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-severite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-severite.csv), [Excel](StructureDefinition-fr-lm-severite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-severite",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-severite",
  "version" : "0.1.0",
  "name" : "FRLMSeverite",
  "title" : "Modèle logique métier - FR LM Sévérité",
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
  "description" : "Entrée Sévérité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-severite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-severite",
        "path" : "fr-lm-severite",
        "short" : "Modèle logique métier - FR LM Sévérité",
        "definition" : "Entrée Sévérité."
      },
      {
        "id" : "fr-lm-severite.identifiantSeverite",
        "path" : "fr-lm-severite.identifiantSeverite",
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
        "id" : "fr-lm-severite.codeSeverite",
        "path" : "fr-lm-severite.codeSeverite",
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
        "id" : "fr-lm-severite.descriptionNarrative",
        "path" : "fr-lm-severite.descriptionNarrative",
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
        "id" : "fr-lm-severite.statutSeverite",
        "path" : "fr-lm-severite.statutSeverite",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-lm-severite.niveauSeverite",
        "path" : "fr-lm-severite.niveauSeverite",
        "short" : "Niveau de sévérité",
        "definition" : "Niveau de sévérité",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
