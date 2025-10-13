# Evaluation - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evaluation**

## Logical Model: Evaluation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluation | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvaluation |

 
Entrée Evaluation 

**Usages:**

* Use this Logical Model: [Fonctions physiques](StructureDefinition-FrFonctionsPhysiques.md) and [Groupe de questionnaires d'évalutation](StructureDefinition-FrGroupDeQuestionnairesDevaluation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvaluation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvaluation.csv), [Excel](StructureDefinition-FrEvaluation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvaluation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluation",
  "version" : "0.1.0",
  "name" : "FrEvaluation",
  "title" : "Evaluation",
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
  "description" : "Entrée Evaluation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvaluation",
        "path" : "FrEvaluation",
        "short" : "Evaluation",
        "definition" : "Entrée Evaluation"
      },
      {
        "id" : "FrEvaluation.identifiant",
        "path" : "FrEvaluation.identifiant",
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
        "id" : "FrEvaluation.typeEvaluation",
        "path" : "FrEvaluation.typeEvaluation",
        "short" : "Code de l'entrée. Type d'évaluation",
        "definition" : "Code de l'entrée. Type d'évaluation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvaluation.description",
        "path" : "FrEvaluation.description",
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
        "id" : "FrEvaluation.statut",
        "path" : "FrEvaluation.statut",
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
        "id" : "FrEvaluation.date",
        "path" : "FrEvaluation.date",
        "short" : "Date",
        "definition" : "Date",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrEvaluation.interpretation",
        "path" : "FrEvaluation.interpretation",
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
        "id" : "FrEvaluation.evaluateur",
        "path" : "FrEvaluation.evaluateur",
        "short" : "Evaluateur",
        "definition" : "Evaluateur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrEvaluation.auteurEvaluation",
        "path" : "FrEvaluation.auteurEvaluation",
        "short" : "Auteur de l'évaluation",
        "definition" : "Auteur de l'évaluation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrEvaluation.responsableEvaluation",
        "path" : "FrEvaluation.responsableEvaluation",
        "short" : "Responsable de l'évaluation",
        "definition" : "Responsable de l'évaluation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrEvaluation.evaluationComposant",
        "path" : "FrEvaluation.evaluationComposant",
        "short" : "Composants de l'évaluation",
        "definition" : "Composants de l'évaluation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposant"
          }
        ]
      },
      {
        "id" : "FrEvaluation.statutEvaluation",
        "path" : "FrEvaluation.statutEvaluation",
        "short" : "Statut de l’évaluation",
        "definition" : "Statut de l’évaluation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatut"
          }
        ]
      },
      {
        "id" : "FrEvaluation.commentaire",
        "path" : "FrEvaluation.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      },
      {
        "id" : "FrEvaluation.referenceInterne",
        "path" : "FrEvaluation.referenceInterne",
        "short" : "Reference Interne",
        "definition" : "Reference Interne",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne"
          }
        ]
      }
    ]
  }
}

```
