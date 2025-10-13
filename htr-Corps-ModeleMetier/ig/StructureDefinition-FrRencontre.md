# Rencontre - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rencontre**

## Logical Model: Rencontre 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRencontre | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrRencontre |

 
Entrée Rencontre 

**Usages:**

* Use this Logical Model: [Acte](StructureDefinition-FrActe.md) and [Plan de soins](StructureDefinition-FrPlanSoins.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrRencontre)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRencontre.csv), [Excel](StructureDefinition-FrRencontre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRencontre",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRencontre",
  "version" : "0.1.0",
  "name" : "FrRencontre",
  "title" : "Rencontre",
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
  "description" : "Entrée Rencontre",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRencontre",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrRencontre",
        "path" : "FrRencontre",
        "short" : "Rencontre",
        "definition" : "Entrée Rencontre"
      },
      {
        "id" : "FrRencontre.identifiant",
        "path" : "FrRencontre.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrRencontre.typeRencontre",
        "path" : "FrRencontre.typeRencontre",
        "short" : "Type de rencontre",
        "definition" : "Type de rencontre",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrRencontre.description",
        "path" : "FrRencontre.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrRencontre.dateRencontre",
        "path" : "FrRencontre.dateRencontre",
        "short" : "Date de la rencontre",
        "definition" : "Date de la rencontre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrRencontre.confirmationRencontre",
        "path" : "FrRencontre.confirmationRencontre",
        "short" : "Confirmation attendue",
        "definition" : "Confirmation attendue",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrRencontre.executant",
        "path" : "FrRencontre.executant",
        "short" : "Exécutant",
        "definition" : "Exécutant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrRencontre.auteur",
        "path" : "FrRencontre.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrRencontre.informateur",
        "path" : "FrRencontre.informateur",
        "short" : "Informateur",
        "definition" : "Informateur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"
          }
        ]
      },
      {
        "id" : "FrRencontre.participant",
        "path" : "FrRencontre.participant",
        "short" : "Lieu d'exécution (PersonneStructure)",
        "definition" : "Lieu d'exécution (PersonneStructure)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrRencontre.autreParticipant",
        "path" : "FrRencontre.autreParticipant",
        "short" : "Participant (utilisable dans le corps du document uniquement)",
        "definition" : "Participant (utilisable dans le corps du document uniquement)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      }
    ]
  }
}

```
