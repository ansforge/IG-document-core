# Acte - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acte**

## Logical Model: Acte 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrActe |

 
Entrée Acte 

**Usages:**

* Use this Logical Model: [Education du patient](StructureDefinition-FrEducationPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrActe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrActe.csv), [Excel](StructureDefinition-FrActe.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrActe",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe",
  "version" : "0.1.0",
  "name" : "FrActe",
  "title" : "Acte",
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
  "description" : "Entrée Acte",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrActe",
        "path" : "FrActe",
        "short" : "Acte",
        "definition" : "Entrée Acte"
      },
      {
        "id" : "FrActe.identifiant",
        "path" : "FrActe.identifiant",
        "short" : "Identifiant de l'acte",
        "definition" : "Identifiant de l'acte",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrActe.description",
        "path" : "FrActe.description",
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
        "id" : "FrActe.code",
        "path" : "FrActe.code",
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
        "id" : "FrActe.titre",
        "path" : "FrActe.titre",
        "short" : "Titre de l'entrée",
        "definition" : "Titre de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrActe.statut",
        "path" : "FrActe.statut",
        "short" : "Statut de l'acte",
        "definition" : "Statut de l'acte",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrActe.date",
        "path" : "FrActe.date",
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
        "id" : "FrActe.priorite",
        "path" : "FrActe.priorite",
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
        "id" : "FrActe.localisationAnatomique",
        "path" : "FrActe.localisationAnatomique",
        "short" : "Localisation anatomique",
        "definition" : "Localisation anatomique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
        }
      },
      {
        "id" : "FrActe.voieDAbord",
        "path" : "FrActe.voieDAbord",
        "short" : "Voie d’abord",
        "definition" : "Voie d’abord",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
        }
      },
      {
        "id" : "FrActe.perfomer",
        "path" : "FrActe.perfomer",
        "short" : "Intervenant",
        "definition" : "Intervenant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrActe.auteur",
        "path" : "FrActe.auteur",
        "short" : "Auteur: Si différent de celui de l’entête",
        "definition" : "Auteur: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrActe.informateur",
        "path" : "FrActe.informateur",
        "short" : "Informateur: Si différent de celui de l’entête",
        "definition" : "Informateur: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"
          }
        ]
      },
      {
        "id" : "FrActe.participant",
        "path" : "FrActe.participant",
        "short" : "Participant: Si différent de celui de l’entête",
        "definition" : "Participant: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrActe.circonstances",
        "path" : "FrActe.circonstances",
        "short" : "Circonstances ayant décidé de l’acte. Réference interne à une Rencontre",
        "definition" : "Circonstances ayant décidé de l’acte. Réference interne à une Rencontre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRencontre"
          }
        ]
      },
      {
        "id" : "FrActe.reason",
        "path" : "FrActe.reason",
        "short" : "Motif de l'acte",
        "definition" : "Motif de l'acte",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne"
          }
        ]
      },
      {
        "id" : "FrActe.dispositifMedical",
        "path" : "FrActe.dispositifMedical",
        "short" : "Réference interne à un DispositifMedical",
        "definition" : "Réference interne à un DispositifMedical",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry"
          }
        ]
      },
      {
        "id" : "FrActe.difficulte",
        "path" : "FrActe.difficulte",
        "short" : "Difficulté",
        "definition" : "Difficulté",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrActe.scores",
        "path" : "FrActe.scores",
        "short" : "Scores",
        "definition" : "Scores",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      }
    ]
  }
}

```
