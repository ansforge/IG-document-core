# Groupe de questionnaires d'évalutation - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Groupe de questionnaires d'évalutation**

## Logical Model: Groupe de questionnaires d'évalutation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGroupDeQuestionnairesDevaluation | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrGroupDeQuestionnairesDevaluation |

 
Entrée Groupe de questionnaires d’évalutation 

**Usages:**

* Use this Logical Model: [Fonctions physiques](StructureDefinition-FrFonctionsPhysiques.md) and [Statut fonctionnel](StructureDefinition-FrStatutFonctionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrGroupDeQuestionnairesDevaluation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrGroupDeQuestionnairesDevaluation.csv), [Excel](StructureDefinition-FrGroupDeQuestionnairesDevaluation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrGroupDeQuestionnairesDevaluation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGroupDeQuestionnairesDevaluation",
  "version" : "0.1.0",
  "name" : "FrGroupDeQuestionnairesDevaluation",
  "title" : "Groupe de questionnaires d'évalutation",
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
  "description" : "Entrée Groupe de questionnaires d'évalutation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGroupDeQuestionnairesDevaluation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrGroupDeQuestionnairesDevaluation",
        "path" : "FrGroupDeQuestionnairesDevaluation",
        "short" : "Groupe de questionnaires d'évalutation",
        "definition" : "Entrée Groupe de questionnaires d'évalutation"
      },
      {
        "id" : "FrGroupDeQuestionnairesDevaluation.identifiant",
        "path" : "FrGroupDeQuestionnairesDevaluation.identifiant",
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
        "id" : "FrGroupDeQuestionnairesDevaluation.code",
        "path" : "FrGroupDeQuestionnairesDevaluation.code",
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
        "id" : "FrGroupDeQuestionnairesDevaluation.statut",
        "path" : "FrGroupDeQuestionnairesDevaluation.statut",
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
        "id" : "FrGroupDeQuestionnairesDevaluation.horodatage",
        "path" : "FrGroupDeQuestionnairesDevaluation.horodatage",
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
        "id" : "FrGroupDeQuestionnairesDevaluation.valeur",
        "path" : "FrGroupDeQuestionnairesDevaluation.valeur",
        "short" : "Valeur de l'observation",
        "definition" : "Valeur de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrGroupDeQuestionnairesDevaluation.evaluation",
        "path" : "FrGroupDeQuestionnairesDevaluation.evaluation",
        "short" : "Évaluation",
        "definition" : "Évaluation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvaluation"
          }
        ]
      }
    ]
  }
}

```
