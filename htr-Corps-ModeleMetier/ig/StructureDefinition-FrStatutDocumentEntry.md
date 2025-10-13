# Statut du document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut du document**

## Logical Model: Statut du document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocumentEntry | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrStatutDocumentEntry |

 
Entrée Statut du document 

**Usages:**

* Use this Logical Model: [Statut du document](StructureDefinition-FrStatutDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrStatutDocumentEntry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrStatutDocumentEntry.csv), [Excel](StructureDefinition-FrStatutDocumentEntry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrStatutDocumentEntry",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocumentEntry",
  "version" : "0.1.0",
  "name" : "FrStatutDocumentEntry",
  "title" : "Statut du document",
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
  "description" : "Entrée Statut du document",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocumentEntry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrStatutDocumentEntry",
        "path" : "FrStatutDocumentEntry",
        "short" : "Statut du document",
        "definition" : "Entrée Statut du document"
      },
      {
        "id" : "FrStatutDocumentEntry.identifiant",
        "path" : "FrStatutDocumentEntry.identifiant",
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
        "id" : "FrStatutDocumentEntry.code",
        "path" : "FrStatutDocumentEntry.code",
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
        "id" : "FrStatutDocumentEntry.description",
        "path" : "FrStatutDocumentEntry.description",
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
        "id" : "FrStatutDocumentEntry.statut",
        "path" : "FrStatutDocumentEntry.statut",
        "short" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "definition" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrStatutDocumentEntry.date",
        "path" : "FrStatutDocumentEntry.date",
        "short" : "Date du statut du document",
        "definition" : "Date du statut du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrStatutDocumentEntry.statutDocument",
        "path" : "FrStatutDocumentEntry.statutDocument",
        "short" : "Statut du document",
        "definition" : "Statut du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-statut-document-cisis (1.2.250.1.213.1.1.5.93)"
        }
      },
      {
        "id" : "FrStatutDocumentEntry.auteur",
        "path" : "FrStatutDocumentEntry.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
