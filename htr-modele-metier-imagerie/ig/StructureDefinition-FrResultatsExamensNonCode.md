# Résultats d'examens (non codée) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultats d'examens (non codée)**

## Logical Model: Résultats d'examens (non codée) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensNonCode | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrResultatsExamensNonCode |

 
Section Résultats d’examens (non codée) 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatsExamensNonCode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatsExamensNonCode.csv), [Excel](StructureDefinition-FrResultatsExamensNonCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatsExamensNonCode",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensNonCode",
  "version" : "0.1.0",
  "name" : "FrResultatsExamensNonCode",
  "title" : "Résultats d'examens (non codée)",
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
  "description" : "Section Résultats d'examens (non codée)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensNonCode",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatsExamensNonCode",
        "path" : "FrResultatsExamensNonCode",
        "short" : "Résultats d'examens (non codée)",
        "definition" : "Section Résultats d'examens (non codée)"
      },
      {
        "id" : "FrResultatsExamensNonCode.sousSection",
        "path" : "FrResultatsExamensNonCode.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrResultatsExamensNonCode.entree",
        "path" : "FrResultatsExamensNonCode.entree",
        "max" : "0"
      }
    ]
  }
}

```
