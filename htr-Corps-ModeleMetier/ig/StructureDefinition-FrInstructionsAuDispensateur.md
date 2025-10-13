# Instructions au dispensateur - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instructions au dispensateur**

## Logical Model: Instructions au dispensateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsAuDispensateur | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrInstructionsAuDispensateur |

 
Entrée Instructions au dispensateur 

**Usages:**

* Use this Logical Model: [Prescription](StructureDefinition-FrPrescriptionEntry.md) and [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrInstructionsAuDispensateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrInstructionsAuDispensateur.csv), [Excel](StructureDefinition-FrInstructionsAuDispensateur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrInstructionsAuDispensateur",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsAuDispensateur",
  "version" : "0.1.0",
  "name" : "FrInstructionsAuDispensateur",
  "title" : "Instructions au dispensateur",
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
  "description" : "Entrée Instructions au dispensateur",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsAuDispensateur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrInstructionsAuDispensateur",
        "path" : "FrInstructionsAuDispensateur",
        "short" : "Instructions au dispensateur",
        "definition" : "Entrée Instructions au dispensateur"
      },
      {
        "id" : "FrInstructionsAuDispensateur.identifiant",
        "path" : "FrInstructionsAuDispensateur.identifiant",
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
        "id" : "FrInstructionsAuDispensateur.codeInstructionsDispensateurt",
        "path" : "FrInstructionsAuDispensateur.codeInstructionsDispensateurt",
        "short" : "Code de l'entrée.",
        "definition" : "Code de l'entrée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrInstructionsAuDispensateur.descriptionInstructionsDispensateur",
        "path" : "FrInstructionsAuDispensateur.descriptionInstructionsDispensateur",
        "short" : "Instructions au dispensateur sous forme textuelle",
        "definition" : "Instructions au dispensateur sous forme textuelle",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrInstructionsAuDispensateur.statutInstructionsDispensateur",
        "path" : "FrInstructionsAuDispensateur.statutInstructionsDispensateur",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      }
    ]
  }
}

```
