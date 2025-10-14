# Complications Acte - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Complications Acte**

## Logical Model: Complications Acte 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComplicationsActe | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrComplicationsActe |

 
Section Complications au cours de l’acte 

**Usages:**

* Use this Logical Model: [Acte d'imagerie](StructureDefinition-FrActeImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrComplicationsActe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrComplicationsActe.csv), [Excel](StructureDefinition-FrComplicationsActe.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrComplicationsActe",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComplicationsActe",
  "version" : "0.1.0",
  "name" : "FrComplicationsActe",
  "title" : "Complications Acte",
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
  "description" : "Section Complications au cours de l'acte",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComplicationsActe",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrComplicationsActe",
        "path" : "FrComplicationsActe",
        "short" : "Complications Acte",
        "definition" : "Section Complications au cours de l'acte"
      },
      {
        "id" : "FrComplicationsActe.titreSection",
        "path" : "FrComplicationsActe.titreSection",
        "min" : 1
      },
      {
        "id" : "FrComplicationsActe.sousSection",
        "path" : "FrComplicationsActe.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrComplicationsActe.entree",
        "path" : "FrComplicationsActe.entree",
        "max" : "0"
      }
    ]
  }
}

```
