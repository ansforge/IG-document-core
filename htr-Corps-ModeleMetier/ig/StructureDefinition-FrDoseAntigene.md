# Dose d'antigène - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dose d'antigène**

## Logical Model: Dose d'antigène 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDoseAntigene | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDoseAntigene |

 
Entrée Dose d’antigène 

**Usages:**

* Use this Logical Model: [Vaccination](StructureDefinition-FrVaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDoseAntigene)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDoseAntigene.csv), [Excel](StructureDefinition-FrDoseAntigene.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDoseAntigene",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDoseAntigene",
  "version" : "0.1.0",
  "name" : "FrDoseAntigene",
  "title" : "Dose d'antigène",
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
  "description" : "Entrée Dose d'antigène",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDoseAntigene",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDoseAntigene",
        "path" : "FrDoseAntigene",
        "short" : "Dose d'antigène",
        "definition" : "Entrée Dose d'antigène"
      },
      {
        "id" : "FrDoseAntigene.identifiant",
        "path" : "FrDoseAntigene.identifiant",
        "short" : "Identifiant de la fourniture du DM",
        "definition" : "Identifiant de la fourniture du DM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDoseAntigene.doseAntigene",
        "path" : "FrDoseAntigene.doseAntigene",
        "short" : "Dose d'antigène",
        "definition" : "Dose d'antigène",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrDoseAntigene.antigene",
        "path" : "FrDoseAntigene.antigene",
        "short" : "Antigène",
        "definition" : "Antigène",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      }
    ]
  }
}

```
