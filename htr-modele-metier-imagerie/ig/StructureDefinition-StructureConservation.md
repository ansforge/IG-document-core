# Modèle métier - Structure chargée de la conservation du document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Structure chargée de la conservation du document**

## Logical Model: Modèle métier - Structure chargée de la conservation du document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:StructureConservation |

 
Structure chargée de la conservation du document, c’est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie. 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/StructureConservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-StructureConservation.csv), [Excel](StructureDefinition-StructureConservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "StructureConservation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation",
  "version" : "0.1.0",
  "name" : "StructureConservation",
  "title" : "Modèle métier - Structure chargée de la conservation du document",
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
  "description" : "Structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "StructureConservation",
        "path" : "StructureConservation",
        "short" : "Modèle métier - Structure chargée de la conservation du document",
        "definition" : "Structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "StructureConservation.structure",
        "path" : "StructureConservation.structure",
        "short" : "Structure",
        "definition" : "Structure",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "StructureConservation.structure.identifiantStructure",
        "path" : "StructureConservation.structure.identifiantStructure",
        "short" : "Identifiant de la structure",
        "definition" : "Identifiant de la structure",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "StructureConservation.structure.nomStructure",
        "path" : "StructureConservation.structure.nomStructure",
        "short" : "Nom de la structure",
        "definition" : "Nom de la structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "StructureConservation.structure.coordonneesTelecom",
        "path" : "StructureConservation.structure.coordonneesTelecom",
        "short" : "Coordonnées télécom",
        "definition" : "Coordonnées télécom",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "StructureConservation.structure.adresse",
        "path" : "StructureConservation.structure.adresse",
        "short" : "Adresse géopostale",
        "definition" : "Adresse géopostale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      }
    ]
  }
}

```
