# Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie**

## Logical Model: Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergieOuHypersensibilite | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAllergieOuHypersensibilite |

 
Entrée Allergie ou hypersensibilite 

**Usages:**

* Use this Logical Model: [Allergies et hypersensibilités](StructureDefinition-FrAllergiesEtHypersensibilites.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAllergieOuHypersensibilite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAllergieOuHypersensibilite.csv), [Excel](StructureDefinition-FrAllergieOuHypersensibilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAllergieOuHypersensibilite",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergieOuHypersensibilite",
  "version" : "0.1.0",
  "name" : "FrAllergieOuHypersensibilite",
  "title" : "Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie",
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
  "description" : "Entrée Allergie ou hypersensibilite",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergieOuHypersensibilite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAllergieOuHypersensibilite",
        "path" : "FrAllergieOuHypersensibilite",
        "short" : "Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie",
        "definition" : "Entrée Allergie ou hypersensibilite"
      },
      {
        "id" : "FrAllergieOuHypersensibilite.identifiant",
        "path" : "FrAllergieOuHypersensibilite.identifiant",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.description",
        "path" : "FrAllergieOuHypersensibilite.description",
        "short" : "Partie narrative de l’entrée",
        "definition" : "Partie narrative de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.type",
        "path" : "FrAllergieOuHypersensibilite.type",
        "short" : "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie",
        "definition" : "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.statut",
        "path" : "FrAllergieOuHypersensibilite.statut",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "FrAllergieOuHypersensibilite.date",
        "path" : "FrAllergieOuHypersensibilite.date",
        "short" : "Date de début",
        "definition" : "Date de début",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.participant",
        "path" : "FrAllergieOuHypersensibilite.participant",
        "short" : "Agent responsable",
        "definition" : "Agent responsable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.probleme",
        "path" : "FrAllergieOuHypersensibilite.probleme",
        "short" : "Réaction observée",
        "definition" : "Réaction observée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      },
      {
        "id" : "FrAllergieOuHypersensibilite.statutClique",
        "path" : "FrAllergieOuHypersensibilite.statutClique",
        "short" : "Statut clinique de l'allergie",
        "definition" : "Statut clinique de l'allergie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "HL7_allergyintolerance-clinical"
        }
      },
      {
        "id" : "FrAllergieOuHypersensibilite.certitude",
        "path" : "FrAllergieOuHypersensibilite.certitude",
        "short" : "Certitude",
        "definition" : "Certitude",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCertitude"
          }
        ],
        "binding" : {
          "description" : "HL7_condition-ver-status"
        }
      },
      {
        "id" : "FrAllergieOuHypersensibilite.criticite",
        "path" : "FrAllergieOuHypersensibilite.criticite",
        "short" : "Criticité",
        "definition" : "Criticité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCriticite"
          }
        ],
        "binding" : {
          "description" : "HL7_allergy_intolerance_criticality"
        }
      }
    ]
  }
}

```
