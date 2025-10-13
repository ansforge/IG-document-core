# Rang de la vaccination - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rang de la vaccination**

## Logical Model: Rang de la vaccination 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRangVaccination | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrRangVaccination |

 
Entrée Rang de la vaccination 

**Usages:**

* Use this Logical Model: [Vaccin recommandé](StructureDefinition-FrVaccinRecommande.md) and [Vaccination](StructureDefinition-FrVaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrRangVaccination)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRangVaccination.csv), [Excel](StructureDefinition-FrRangVaccination.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRangVaccination",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRangVaccination",
  "version" : "0.1.0",
  "name" : "FrRangVaccination",
  "title" : "Rang de la vaccination",
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
  "description" : "Entrée Rang de la vaccination ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRangVaccination",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrRangVaccination",
        "path" : "FrRangVaccination",
        "short" : "Rang de la vaccination",
        "definition" : "Entrée Rang de la vaccination "
      },
      {
        "id" : "FrRangVaccination.identifiantRangVaccination",
        "path" : "FrRangVaccination.identifiantRangVaccination",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.codeRangVaccination",
        "path" : "FrRangVaccination.codeRangVaccination",
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
        "id" : "FrRangVaccination.derivationRangVaccination",
        "path" : "FrRangVaccination.derivationRangVaccination",
        "short" : "derivation.",
        "definition" : "derivation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.descriptionRangVaccination",
        "path" : "FrRangVaccination.descriptionRangVaccination",
        "short" : "Partie narrative de l’entrée",
        "definition" : "Partie narrative de l’entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.statutRangVaccination",
        "path" : "FrRangVaccination.statutRangVaccination",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.dateRangVaccination",
        "path" : "FrRangVaccination.dateRangVaccination",
        "short" : "Date de l’observation",
        "definition" : "Date de l’observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.prioriteRangVaccination",
        "path" : "FrRangVaccination.prioriteRangVaccination",
        "short" : "Priorité",
        "definition" : "Priorité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.nombreRenouvellements",
        "path" : "FrRangVaccination.nombreRenouvellements",
        "short" : "Nombre de renouvellements possibles",
        "definition" : "Nombre de renouvellements possibles",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.languageRangVaccination",
        "path" : "FrRangVaccination.languageRangVaccination",
        "short" : "Language",
        "definition" : "Language",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrRangVaccination.rangVaccination",
        "path" : "FrRangVaccination.rangVaccination",
        "short" : "Rang de la vaccination",
        "definition" : "Rang de la vaccination",
        "min" : 1,
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
