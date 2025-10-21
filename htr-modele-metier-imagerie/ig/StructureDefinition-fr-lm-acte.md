# Modèle logique métier - FR LM Acte - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Acte**

## Logical Model: Modèle logique métier - FR LM Acte 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMActe |

 
Entrée Acte 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Education du patient](StructureDefinition-fr-lm-education-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-acte)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-acte.csv), [Excel](StructureDefinition-fr-lm-acte.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-acte",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte",
  "version" : "0.1.0",
  "name" : "FRLMActe",
  "title" : "Modèle logique métier - FR LM Acte",
  "status" : "draft",
  "date" : "2025-10-21T10:48:05+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-acte",
        "path" : "fr-lm-acte",
        "short" : "Modèle logique métier - FR LM Acte",
        "definition" : "Entrée Acte"
      },
      {
        "id" : "fr-lm-acte.identifiant",
        "path" : "fr-lm-acte.identifiant",
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
        "id" : "fr-lm-acte.description",
        "path" : "fr-lm-acte.description",
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
        "id" : "fr-lm-acte.code",
        "path" : "fr-lm-acte.code",
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
        "id" : "fr-lm-acte.titre",
        "path" : "fr-lm-acte.titre",
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
        "id" : "fr-lm-acte.statut",
        "path" : "fr-lm-acte.statut",
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
        "id" : "fr-lm-acte.date",
        "path" : "fr-lm-acte.date",
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
        "id" : "fr-lm-acte.priorite",
        "path" : "fr-lm-acte.priorite",
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
        "id" : "fr-lm-acte.localisationAnatomique",
        "path" : "fr-lm-acte.localisationAnatomique",
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
        "id" : "fr-lm-acte.voieDAbord",
        "path" : "fr-lm-acte.voieDAbord",
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
        "id" : "fr-lm-acte.perfomer",
        "path" : "fr-lm-acte.perfomer",
        "short" : "Intervenant",
        "definition" : "Intervenant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.auteur",
        "path" : "fr-lm-acte.auteur",
        "short" : "Auteur: Si différent de celui de l’entête",
        "definition" : "Auteur: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.informateur",
        "path" : "fr-lm-acte.informateur",
        "short" : "Informateur: Si différent de celui de l’entête",
        "definition" : "Informateur: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informateur"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.participant",
        "path" : "fr-lm-acte.participant",
        "short" : "Participant: Si différent de celui de l’entête",
        "definition" : "Participant: Si différent de celui de l’entête",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant-corps"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.circonstances",
        "path" : "fr-lm-acte.circonstances",
        "short" : "Circonstances ayant décidé de l’acte. Réference interne à une Rencontre",
        "definition" : "Circonstances ayant décidé de l’acte. Réference interne à une Rencontre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-rencontre"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.reason",
        "path" : "fr-lm-acte.reason",
        "short" : "Motif de l'acte",
        "definition" : "Motif de l'acte",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-reference-interne"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.dispositifMedical",
        "path" : "fr-lm-acte.dispositifMedical",
        "short" : "Réference interne à un DispositifMedical",
        "definition" : "Réference interne à un DispositifMedical",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositif-medical-entree"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.difficulte",
        "path" : "fr-lm-acte.difficulte",
        "short" : "Difficulté",
        "definition" : "Difficulté",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation"
          }
        ]
      },
      {
        "id" : "fr-lm-acte.scores",
        "path" : "fr-lm-acte.scores",
        "short" : "Scores",
        "definition" : "Scores",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation"
          }
        ]
      }
    ]
  }
}

```
