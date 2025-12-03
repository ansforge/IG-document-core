# Modèle logique métier - FR LM Dose d'antigène - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Dose d'antigène**

## Logical Model: Modèle logique métier - FR LM Dose d'antigène 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dose-antigene | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:FRLMDoseAntigene |

 
Entrée Dose d’antigène 

**Utilisations:**

* Utiliser ce Modèle logique: [Modèle logique métier - FR LM Vaccination](StructureDefinition-fr-lm-vaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-dose-antigene)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-dose-antigene.csv), [Excel](StructureDefinition-fr-lm-dose-antigene.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-dose-antigene",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dose-antigene",
  "version" : "0.1.0",
  "name" : "FRLMDoseAntigene",
  "title" : "Modèle logique métier - FR LM Dose d'antigène",
  "status" : "draft",
  "date" : "2025-12-03T15:31:39+00:00",
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
  "description" : "Entrée Dose d'antigène",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dose-antigene",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-dose-antigene",
        "path" : "fr-lm-dose-antigene",
        "short" : "Modèle logique métier - FR LM Dose d'antigène",
        "definition" : "Entrée Dose d'antigène"
      },
      {
        "id" : "fr-lm-dose-antigene.identifiant",
        "path" : "fr-lm-dose-antigene.identifiant",
        "short" : "Identifiant de la fourniture du DM",
        "definition" : "Identifiant de la fourniture du DM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "fr-lm-dose-antigene.doseAntigene",
        "path" : "fr-lm-dose-antigene.doseAntigene",
        "short" : "Dose d'antigène",
        "definition" : "Dose d'antigène",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "fr-lm-dose-antigene.antigene",
        "path" : "fr-lm-dose-antigene.antigene",
        "short" : "Antigène",
        "definition" : "Antigène",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-produit-sante"
          }
        ]
      }
    ]
  }
}

```
