# Instruction au patient - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instruction au patient**

## Logical Model: Instruction au patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionAuPatient | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrInstructionAuPatient |

 
Entrée Instruction au patient 

**Usages:**

* Use this Logical Model: [Instructions au patient](StructureDefinition-FrInstructionsPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrInstructionAuPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrInstructionAuPatient.csv), [Excel](StructureDefinition-FrInstructionAuPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrInstructionAuPatient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionAuPatient",
  "version" : "0.1.0",
  "name" : "FrInstructionAuPatient",
  "title" : "Instruction au patient",
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
  "description" : "Entrée Instruction au patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionAuPatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrInstructionAuPatient",
        "path" : "FrInstructionAuPatient",
        "short" : "Instruction au patient",
        "definition" : "Entrée Instruction au patient"
      },
      {
        "id" : "FrInstructionAuPatient.identifiant",
        "path" : "FrInstructionAuPatient.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrInstructionAuPatient.codeInstructionPatient",
        "path" : "FrInstructionAuPatient.codeInstructionPatient",
        "short" : "Code de l'observation",
        "definition" : "Code de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrInstructionAuPatient.descriptionInstructionPatient",
        "path" : "FrInstructionAuPatient.descriptionInstructionPatient",
        "short" : "Instruction au patient",
        "definition" : "Instruction au patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrInstructionAuPatient.statutInstructionPatient",
        "path" : "FrInstructionAuPatient.statutInstructionPatient",
        "short" : "Statut de l'observation",
        "definition" : "Statut de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrInstructionAuPatient.horodatageinstructionPatient",
        "path" : "FrInstructionAuPatient.horodatageinstructionPatient",
        "short" : "Horodatage de l’entrée",
        "definition" : "Horodatage de l’entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrInstructionAuPatient.valeurInstructionPatient",
        "path" : "FrInstructionAuPatient.valeurInstructionPatient",
        "short" : "Instruction au patient sous forme codée",
        "definition" : "Instruction au patient sous forme codée",
        "min" : 0,
        "max" : "*",
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
