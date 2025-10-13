# Historique de la grossesse - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Historique de la grossesse**

## Logical Model: Historique de la grossesse 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueGrossesse | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrHistoriqueGrossesse |

 
Entrée Historique de la grossesse 

**Usages:**

* Use this Logical Model: [Antécédents obstétricaux](StructureDefinition-FrHistoriqueDesGrossesses.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrHistoriqueGrossesse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrHistoriqueGrossesse.csv), [Excel](StructureDefinition-FrHistoriqueGrossesse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrHistoriqueGrossesse",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueGrossesse",
  "version" : "0.1.0",
  "name" : "FrHistoriqueGrossesse",
  "title" : "Historique de la grossesse",
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
  "description" : "Entrée Historique de la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueGrossesse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrHistoriqueGrossesse",
        "path" : "FrHistoriqueGrossesse",
        "short" : "Historique de la grossesse",
        "definition" : "Entrée Historique de la grossesse"
      },
      {
        "id" : "FrHistoriqueGrossesse.identifiant",
        "path" : "FrHistoriqueGrossesse.identifiant",
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
        "id" : "FrHistoriqueGrossesse.code",
        "path" : "FrHistoriqueGrossesse.code",
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
        "id" : "FrHistoriqueGrossesse.statut",
        "path" : "FrHistoriqueGrossesse.statut",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "completed"
            }
          ]
        }
      },
      {
        "id" : "FrHistoriqueGrossesse.periodeGrossesse",
        "path" : "FrHistoriqueGrossesse.periodeGrossesse",
        "short" : "Période de la grossesse",
        "definition" : "Période de la grossesse",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrHistoriqueGrossesse.choice[x]",
        "path" : "FrHistoriqueGrossesse.choice[x]",
        "short" : "L'entrée Historique de la grossesse contient :\n  • soit les informations relatives à une naissance (une ou plusieurs entrée FR-Naissance),  \n  • soit les informations relatives à la grossesse  (une ou plusieurs entrée FR-Observation-sur-la-grossesse)",
        "definition" : "L'entrée Historique de la grossesse contient :\n  • soit les informations relatives à une naissance (une ou plusieurs entrée FR-Naissance),  \n  • soit les informations relatives à la grossesse  (une ou plusieurs entrée FR-Observation-sur-la-grossesse)",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNaissance"
          },
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse"
          }
        ]
      }
    ]
  }
}

```
