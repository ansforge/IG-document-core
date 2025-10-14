# Quantité exposition - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Quantité exposition**

## Logical Model: Quantité exposition 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrQuantiteExposition | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrQuantiteExposition |

 
Entrée Quantité exposition 

**Usages:**

* Use this Logical Model: [Exposition aux radiations](StructureDefinition-FrExpositionRadiations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrQuantiteExposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrQuantiteExposition.csv), [Excel](StructureDefinition-FrQuantiteExposition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrQuantiteExposition",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrQuantiteExposition",
  "version" : "0.1.0",
  "name" : "FrQuantiteExposition",
  "title" : "Quantité exposition",
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
  "description" : "Entrée Quantité exposition",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrQuantiteExposition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrQuantiteExposition",
        "path" : "FrQuantiteExposition",
        "short" : "Quantité exposition",
        "definition" : "Entrée Quantité exposition"
      },
      {
        "id" : "FrQuantiteExposition.identifiant",
        "path" : "FrQuantiteExposition.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrQuantiteExposition.code",
        "path" : "FrQuantiteExposition.code",
        "short" : "Code de l'observation",
        "definition" : "Code de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrQuantiteExposition.description",
        "path" : "FrQuantiteExposition.description",
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
        "id" : "FrQuantiteExposition.statut",
        "path" : "FrQuantiteExposition.statut",
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
        "id" : "FrQuantiteExposition.date",
        "path" : "FrQuantiteExposition.date",
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
        "id" : "FrQuantiteExposition.valeur",
        "path" : "FrQuantiteExposition.valeur",
        "short" : "Quantité mesurée",
        "definition" : "Quantité mesurée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrQuantiteExposition.lateralite",
        "path" : "FrQuantiteExposition.lateralite",
        "short" : "Latéralité et topographie",
        "definition" : "Latéralité et topographie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-localisation-anatomique-cisis (1.2.250.1.213.1.1.5.694)"
        }
      },
      {
        "id" : "FrQuantiteExposition.lateralite.topographique",
        "path" : "FrQuantiteExposition.lateralite.topographique",
        "short" : "Précision topographique",
        "definition" : "Précision topographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrQuantiteExposition.lateralite.topographique.nom",
        "path" : "FrQuantiteExposition.lateralite.topographique.nom",
        "short" : "name",
        "definition" : "name",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrQuantiteExposition.lateralite.topographique.valeur",
        "path" : "FrQuantiteExposition.lateralite.topographique.valeur",
        "short" : "Valeur de la topographie",
        "definition" : "Valeur de la topographie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"
        }
      }
    ]
  }
}

```
