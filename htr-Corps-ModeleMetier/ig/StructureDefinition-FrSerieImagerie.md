# Serie imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Serie imagerie**

## Logical Model: Serie imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSerieImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrSerieImagerie |

 
Entrée Serie imagerie 

**Usages:**

* Use this Logical Model: [Examen Imagerie](StructureDefinition-FrExamenImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrSerieImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSerieImagerie.csv), [Excel](StructureDefinition-FrSerieImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSerieImagerie",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSerieImagerie",
  "version" : "0.1.0",
  "name" : "FrSerieImagerie",
  "title" : "Serie imagerie",
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
  "description" : "Entrée Serie imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSerieImagerie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrSerieImagerie",
        "path" : "FrSerieImagerie",
        "short" : "Serie imagerie",
        "definition" : "Entrée Serie imagerie"
      },
      {
        "id" : "FrSerieImagerie.uuidSerie",
        "path" : "FrSerieImagerie.uuidSerie",
        "short" : "UUID serie",
        "definition" : "UUID serie",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.code",
        "path" : "FrSerieImagerie.code",
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
        "id" : "FrSerieImagerie.description",
        "path" : "FrSerieImagerie.description",
        "short" : "Partie narrative de l'entrée",
        "definition" : "Partie narrative de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.date",
        "path" : "FrSerieImagerie.date",
        "short" : "Date de la série d'actes",
        "definition" : "Date de la série d'actes",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.instanceSOP",
        "path" : "FrSerieImagerie.instanceSOP",
        "short" : "SOP instance",
        "definition" : "SOP instance",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSOPInstance"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.referenceWado",
        "path" : "FrSerieImagerie.referenceWado",
        "short" : "Référence WADO",
        "definition" : "Référence WADO",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.referenceWado.iHEInvokeImage",
        "path" : "FrSerieImagerie.referenceWado.iHEInvokeImage",
        "short" : "IHE Invoke Image Display",
        "definition" : "IHE Invoke Image Display",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.referenceWado.typeMedia",
        "path" : "FrSerieImagerie.referenceWado.typeMedia",
        "short" : "Type de media",
        "definition" : "Type de media",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSerieImagerie.referenceWado.reference",
        "path" : "FrSerieImagerie.referenceWado.reference",
        "short" : "Référence WADO",
        "definition" : "Référence WADO",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      }
    ]
  }
}

```
