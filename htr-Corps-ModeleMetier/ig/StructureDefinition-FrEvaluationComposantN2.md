# Evaluation Composant N2 - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evaluation Composant N2**

## Logical Model: Evaluation Composant N2 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposantN2 | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvaluationComposantN2 |

 
Entrée Evaluation Composant N2 

**Usages:**

* Use this Logical Model: [Evaluation Composant](StructureDefinition-FrEvaluationComposant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvaluationComposantN2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvaluationComposantN2.csv), [Excel](StructureDefinition-FrEvaluationComposantN2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvaluationComposantN2",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposantN2",
  "version" : "0.1.0",
  "name" : "FrEvaluationComposantN2",
  "title" : "Evaluation Composant N2",
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
  "description" : "Entrée Evaluation Composant N2",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposantN2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvaluationComposantN2",
        "path" : "FrEvaluationComposantN2",
        "short" : "Evaluation Composant N2",
        "definition" : "Entrée Evaluation Composant N2"
      },
      {
        "id" : "FrEvaluationComposantN2.identifiant",
        "path" : "FrEvaluationComposantN2.identifiant",
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
        "id" : "FrEvaluationComposantN2.codeEvaluation",
        "path" : "FrEvaluationComposantN2.codeEvaluation",
        "short" : "Code de l'évaluation",
        "definition" : "Code de l'évaluation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvaluationComposantN2.description",
        "path" : "FrEvaluationComposantN2.description",
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
        "id" : "FrEvaluationComposantN2.statut",
        "path" : "FrEvaluationComposantN2.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "FrEvaluationComposantN2.horodatage",
        "path" : "FrEvaluationComposantN2.horodatage",
        "short" : "Horodatage de l'entrée",
        "definition" : "Horodatage de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrEvaluationComposantN2.resultat",
        "path" : "FrEvaluationComposantN2.resultat",
        "short" : "Résultat de l'évaluation",
        "definition" : "Résultat de l'évaluation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvaluationComposantN2.interpretation",
        "path" : "FrEvaluationComposantN2.interpretation",
        "short" : "Interprétation",
        "definition" : "Interprétation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvaluationComposantN2.commentaire",
        "path" : "FrEvaluationComposantN2.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      }
    ]
  }
}

```
