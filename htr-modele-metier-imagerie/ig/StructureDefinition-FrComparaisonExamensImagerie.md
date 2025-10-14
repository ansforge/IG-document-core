# Comparaison d'examens d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comparaison d'examens d'imagerie**

## Logical Model: Comparaison d'examens d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComparaisonExamensImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrComparaisonExamensImagerie |

 
Section Comparaison d’examens d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrComparaisonExamensImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrComparaisonExamensImagerie.csv), [Excel](StructureDefinition-FrComparaisonExamensImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrComparaisonExamensImagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComparaisonExamensImagerie",
  "version" : "0.1.0",
  "name" : "FrComparaisonExamensImagerie",
  "title" : "Comparaison d'examens d'imagerie",
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
  "description" : "Section Comparaison d'examens d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComparaisonExamensImagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrComparaisonExamensImagerie",
        "path" : "FrComparaisonExamensImagerie",
        "short" : "Comparaison d'examens d'imagerie",
        "definition" : "Section Comparaison d'examens d'imagerie"
      },
      {
        "id" : "FrComparaisonExamensImagerie.titreSection",
        "path" : "FrComparaisonExamensImagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrComparaisonExamensImagerie.sousSection",
        "path" : "FrComparaisonExamensImagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrComparaisonExamensImagerie.entree",
        "path" : "FrComparaisonExamensImagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
