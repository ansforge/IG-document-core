# Instructions au patient - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instructions au patient**

## Logical Model: Instructions au patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsPatient | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrInstructionsPatient |

 
Entrée Instructions au patient 

**Usages:**

* Use this Logical Model: [Traitement](StructureDefinition-FrTraitement.md), [Traitement dispensé](StructureDefinition-FrTraitementDispense.md) and [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrInstructionsPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrInstructionsPatient.csv), [Excel](StructureDefinition-FrInstructionsPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrInstructionsPatient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsPatient",
  "version" : "0.1.0",
  "name" : "FrInstructionsPatient",
  "title" : "Instructions au patient",
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
  "description" : "Entrée Instructions au patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsPatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrInstructionsPatient",
        "path" : "FrInstructionsPatient",
        "short" : "Instructions au patient",
        "definition" : "Entrée Instructions au patient"
      },
      {
        "id" : "FrInstructionsPatient.identifiant",
        "path" : "FrInstructionsPatient.identifiant",
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
        "id" : "FrInstructionsPatient.codeInstructionsPatient",
        "path" : "FrInstructionsPatient.codeInstructionsPatient",
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
        "id" : "FrInstructionsPatient.descriptionInstructionsPatient",
        "path" : "FrInstructionsPatient.descriptionInstructionsPatient",
        "short" : "Instructions au patient",
        "definition" : "Instructions au patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrInstructionsPatient.statutInstructionsPatient",
        "path" : "FrInstructionsPatient.statutInstructionsPatient",
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
        "id" : "FrInstructionsPatient.instructionPatient",
        "path" : "FrInstructionsPatient.instructionPatient",
        "short" : "Instruction au patient sous forme codée",
        "definition" : "Instruction au patient sous forme codée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionAuPatient"
          }
        ]
      }
    ]
  }
}

```
