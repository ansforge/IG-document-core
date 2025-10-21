# Modèle logique métier - FR LM Complications Acte - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Complications Acte**

## Logical Model: Modèle logique métier - FR LM Complications Acte 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMComplicationsActe |

 
Section Complications au cours de l’acte 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Acte d'imagerie](StructureDefinition-fr-lm-acte-imagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-complications-acte)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-complications-acte.csv), [Excel](StructureDefinition-fr-lm-complications-acte.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-complications-acte",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte",
  "version" : "0.1.0",
  "name" : "FRLMComplicationsActe",
  "title" : "Modèle logique métier - FR LM Complications Acte",
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
  "description" : "Section Complications au cours de l'acte",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-complications-acte",
        "path" : "fr-lm-complications-acte",
        "short" : "Modèle logique métier - FR LM Complications Acte",
        "definition" : "Section Complications au cours de l'acte"
      },
      {
        "id" : "fr-lm-complications-acte.titreSection",
        "path" : "fr-lm-complications-acte.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-complications-acte.sousSection",
        "path" : "fr-lm-complications-acte.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-complications-acte.entree",
        "path" : "fr-lm-complications-acte.entree",
        "max" : "0"
      }
    ]
  }
}

```
