# Signe vital observé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Signe vital observé**

## Logical Model: Signe vital observé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSigneVitalObserve | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrSigneVitalObserve |

 
Entrée Signe vital observé 

**Usages:**

* Use this Logical Model: [Signe vital](StructureDefinition-FrSigneVital.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrSigneVitalObserve)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSigneVitalObserve.csv), [Excel](StructureDefinition-FrSigneVitalObserve.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSigneVitalObserve",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSigneVitalObserve",
  "version" : "0.1.0",
  "name" : "FrSigneVitalObserve",
  "title" : "Signe vital observé",
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
  "description" : "Entrée Signe vital observé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSigneVitalObserve",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrSigneVitalObserve",
        "path" : "FrSigneVitalObserve",
        "short" : "Signe vital observé",
        "definition" : "Entrée Signe vital observé"
      },
      {
        "id" : "FrSigneVitalObserve.identifiant",
        "path" : "FrSigneVitalObserve.identifiant",
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
        "id" : "FrSigneVitalObserve.code",
        "path" : "FrSigneVitalObserve.code",
        "short" : "Code de l'entrée. Signe vital observé",
        "definition" : "Code de l'entrée. Signe vital observé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.description",
        "path" : "FrSigneVitalObserve.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.statut",
        "path" : "FrSigneVitalObserve.statut",
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
        "id" : "FrSigneVitalObserve.date",
        "path" : "FrSigneVitalObserve.date",
        "short" : "Date de l'observation",
        "definition" : "Date de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.observationEffectuee",
        "path" : "FrSigneVitalObserve.observationEffectuee",
        "short" : "Observation effectuée",
        "definition" : "Observation effectuée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.interpretation",
        "path" : "FrSigneVitalObserve.interpretation",
        "short" : "Interprétation",
        "definition" : "Interprétation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.methodeUtilisee",
        "path" : "FrSigneVitalObserve.methodeUtilisee",
        "short" : "Méthode utilisée pour l'observation",
        "definition" : "Méthode utilisée pour l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.siteObservation",
        "path" : "FrSigneVitalObserve.siteObservation",
        "short" : "Site de l'observation",
        "definition" : "Site de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrSigneVitalObserve.auteur",
        "path" : "FrSigneVitalObserve.auteur",
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
