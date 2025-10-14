# Examen Imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Examen Imagerie**

## Logical Model: Examen Imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExamenImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrExamenImagerie |

 
Entrée DICOM Examen Imagerie 

**Usages:**

* Use this Logical Model: [Object Catalog](StructureDefinition-FrObjectCatalog.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrExamenImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrExamenImagerie.csv), [Excel](StructureDefinition-FrExamenImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrExamenImagerie",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExamenImagerie",
  "version" : "0.1.0",
  "name" : "FrExamenImagerie",
  "title" : "Examen Imagerie",
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
  "description" : "Entrée DICOM Examen Imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExamenImagerie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrExamenImagerie",
        "path" : "FrExamenImagerie",
        "short" : "Examen Imagerie",
        "definition" : "Entrée DICOM Examen Imagerie"
      },
      {
        "id" : "FrExamenImagerie.uuidInstanceExamen",
        "path" : "FrExamenImagerie.uuidInstanceExamen",
        "short" : "UUID instance examen",
        "definition" : "UUID instance examen",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrExamenImagerie.codeActe",
        "path" : "FrExamenImagerie.codeActe",
        "short" : "Code de l'acte",
        "definition" : "Code de l'acte",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrExamenImagerie.description",
        "path" : "FrExamenImagerie.description",
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
        "id" : "FrExamenImagerie.dateActe",
        "path" : "FrExamenImagerie.dateActe",
        "short" : "Date de l'acte",
        "definition" : "Date de l'acte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrExamenImagerie.serieImagerie",
        "path" : "FrExamenImagerie.serieImagerie",
        "short" : "Serie-imagerie",
        "definition" : "Serie-imagerie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSerieImagerie"
          }
        ]
      },
      {
        "id" : "FrExamenImagerie.objectifsReferences",
        "path" : "FrExamenImagerie.objectifsReferences",
        "short" : "Objectifs de reference",
        "definition" : "Objectifs de reference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-imagerie-objectif-reference-cisis (1.2.250.1.213.1.1.5.672)"
        }
      }
    ]
  }
}

```
