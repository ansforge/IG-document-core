# Statut clinique du patient - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut clinique du patient**

## Logical Model: Statut clinique du patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutCliniquePatient | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrStatutCliniquePatient |

 
Entrée Statut clinique du patient 

**Usages:**

* Use this Logical Model: [Problème](StructureDefinition-FrProbleme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrStatutCliniquePatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrStatutCliniquePatient.csv), [Excel](StructureDefinition-FrStatutCliniquePatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrStatutCliniquePatient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutCliniquePatient",
  "version" : "0.1.0",
  "name" : "FrStatutCliniquePatient",
  "title" : "Statut clinique du patient",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Entrée Statut clinique du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutCliniquePatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrStatutCliniquePatient",
        "path" : "FrStatutCliniquePatient",
        "short" : "Statut clinique du patient",
        "definition" : "Entrée Statut clinique du patient"
      },
      {
        "id" : "FrStatutCliniquePatient.codeStatutCliniquePatient",
        "path" : "FrStatutCliniquePatient.codeStatutCliniquePatient",
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
        "id" : "FrStatutCliniquePatient.descriptionNarrative",
        "path" : "FrStatutCliniquePatient.descriptionNarrative",
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
        "id" : "FrStatutCliniquePatient.statutEntree",
        "path" : "FrStatutCliniquePatient.statutEntree",
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
        "id" : "FrStatutCliniquePatient.statutCliniquePatient",
        "path" : "FrStatutCliniquePatient.statutCliniquePatient",
        "short" : "Statut clinique du patient",
        "definition" : "Statut clinique du patient",
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
