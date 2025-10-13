# Statut du problème - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut du problème**

## Logical Model: Statut du problème 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutProbleme | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrStatutProbleme |

 
Entrée Statut du problème. 

**Usages:**

* Use this Logical Model: [Problème](StructureDefinition-FrProbleme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrStatutProbleme)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrStatutProbleme.csv), [Excel](StructureDefinition-FrStatutProbleme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrStatutProbleme",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutProbleme",
  "version" : "0.1.0",
  "name" : "FrStatutProbleme",
  "title" : "Statut du problème",
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
  "description" : "Entrée Statut du problème.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutProbleme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrStatutProbleme",
        "path" : "FrStatutProbleme",
        "short" : "Statut du problème",
        "definition" : "Entrée Statut du problème."
      },
      {
        "id" : "FrStatutProbleme.codeStatutProbleme",
        "path" : "FrStatutProbleme.codeStatutProbleme",
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
        "id" : "FrStatutProbleme.descriptionNarrative",
        "path" : "FrStatutProbleme.descriptionNarrative",
        "short" : "Description narrative de l'entrée",
        "definition" : "Description narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrStatutProbleme.statutEntree",
        "path" : "FrStatutProbleme.statutEntree",
        "short" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "definition" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrStatutProbleme.statutProbleme",
        "path" : "FrStatutProbleme.statutProbleme",
        "short" : "Valeur",
        "definition" : "Valeur",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
