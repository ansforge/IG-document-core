# Fonctions physiques - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fonctions physiques**

## Logical Model: Fonctions physiques 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFonctionsPhysiques | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrFonctionsPhysiques |

 
Section Fonctions physiques 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrFonctionsPhysiques)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrFonctionsPhysiques.csv), [Excel](StructureDefinition-FrFonctionsPhysiques.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrFonctionsPhysiques",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFonctionsPhysiques",
  "version" : "0.1.0",
  "name" : "FrFonctionsPhysiques",
  "title" : "Fonctions physiques",
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
  "description" : "Section Fonctions physiques",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFonctionsPhysiques",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrFonctionsPhysiques",
        "path" : "FrFonctionsPhysiques",
        "short" : "Fonctions physiques",
        "definition" : "Section Fonctions physiques"
      },
      {
        "id" : "FrFonctionsPhysiques.sousSection",
        "path" : "FrFonctionsPhysiques.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrFonctionsPhysiques.entree.groupeQuestionnairesEvaluation",
        "path" : "FrFonctionsPhysiques.entree.groupeQuestionnairesEvaluation",
        "short" : "Groupe de questionnaires d'évalutation",
        "definition" : "Groupe de questionnaires d'évalutation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGroupDeQuestionnairesDevaluation"
          }
        ]
      },
      {
        "id" : "FrFonctionsPhysiques.entree.evalutation",
        "path" : "FrFonctionsPhysiques.entree.evalutation",
        "short" : "Entrée Evalutation",
        "definition" : "Entrée Evalutation",
        "min" : 0,
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
