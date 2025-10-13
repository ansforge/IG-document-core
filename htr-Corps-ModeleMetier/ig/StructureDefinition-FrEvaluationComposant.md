# Evaluation Composant - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evaluation Composant**

## Logical Model: Evaluation Composant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposant | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvaluationComposant |

 
Entrée Evaluation Composant 

**Usages:**

* Use this Logical Model: [Evaluation](StructureDefinition-FrEvaluation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvaluationComposant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvaluationComposant.csv), [Excel](StructureDefinition-FrEvaluationComposant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvaluationComposant",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposant",
  "version" : "0.1.0",
  "name" : "FrEvaluationComposant",
  "title" : "Evaluation Composant",
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
  "description" : "Entrée Evaluation Composant",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvaluationComposant",
        "path" : "FrEvaluationComposant",
        "short" : "Evaluation Composant",
        "definition" : "Entrée Evaluation Composant"
      },
      {
        "id" : "FrEvaluationComposant.identifiant",
        "path" : "FrEvaluationComposant.identifiant",
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
        "id" : "FrEvaluationComposant.codeEvaluation",
        "path" : "FrEvaluationComposant.codeEvaluation",
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
        "id" : "FrEvaluationComposant.description",
        "path" : "FrEvaluationComposant.description",
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
        "id" : "FrEvaluationComposant.statut",
        "path" : "FrEvaluationComposant.statut",
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
        "id" : "FrEvaluationComposant.horodatage",
        "path" : "FrEvaluationComposant.horodatage",
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
        "id" : "FrEvaluationComposant.resultat",
        "path" : "FrEvaluationComposant.resultat",
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
        "id" : "FrEvaluationComposant.interpretation",
        "path" : "FrEvaluationComposant.interpretation",
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
        "id" : "FrEvaluationComposant.composantEvaluation",
        "path" : "FrEvaluationComposant.composantEvaluation",
        "short" : "Sous-composant de l'évaluation",
        "definition" : "Sous-composant de l'évaluation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluationComposantN2"
          }
        ]
      },
      {
        "id" : "FrEvaluationComposant.commentaire",
        "path" : "FrEvaluationComposant.commentaire",
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
