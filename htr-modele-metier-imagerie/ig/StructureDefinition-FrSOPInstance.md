# SOP Instance - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SOP Instance**

## Logical Model: SOP Instance 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSOPInstance | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrSOPInstance |

 
Entrée SOP Instance 

**Usages:**

* Use this Logical Model: [Serie imagerie](StructureDefinition-FrSerieImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrSOPInstance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSOPInstance.csv), [Excel](StructureDefinition-FrSOPInstance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSOPInstance",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSOPInstance",
  "version" : "0.1.0",
  "name" : "FrSOPInstance",
  "title" : "SOP Instance",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Entrée SOP Instance",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSOPInstance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrSOPInstance",
        "path" : "FrSOPInstance",
        "short" : "SOP Instance",
        "definition" : "Entrée SOP Instance"
      },
      {
        "id" : "FrSOPInstance.uuidSOPInstance",
        "path" : "FrSOPInstance.uuidSOPInstance",
        "short" : "UUID SOP instance",
        "definition" : "UUID SOP instance",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrSOPInstance.classeSOP",
        "path" : "FrSOPInstance.classeSOP",
        "short" : "Classe SOP",
        "definition" : "Classe SOP",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)"
        }
      },
      {
        "id" : "FrSOPInstance.description",
        "path" : "FrSOPInstance.description",
        "short" : "Partie narrative de l'observation",
        "definition" : "Partie narrative de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrSOPInstance.statut",
        "path" : "FrSOPInstance.statut",
        "short" : "status de l'observation",
        "definition" : "status de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrSOPInstance.date",
        "path" : "FrSOPInstance.date",
        "short" : "Date de l'observation",
        "definition" : "Date de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrSOPInstance.nombreCadresReferences",
        "path" : "FrSOPInstance.nombreCadresReferences",
        "short" : "Nombres de cadres référencés",
        "definition" : "Nombres de cadres référencés",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
