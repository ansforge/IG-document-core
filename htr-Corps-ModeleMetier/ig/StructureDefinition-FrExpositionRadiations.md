# Exposition aux radiations - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exposition aux radiations**

## Logical Model: Exposition aux radiations 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrExpositionRadiations |

 
Section Exposition aux radiations 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md) and [Acte d'imagerie](StructureDefinition-FrActeImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrExpositionRadiations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrExpositionRadiations.csv), [Excel](StructureDefinition-FrExpositionRadiations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrExpositionRadiations",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations",
  "version" : "0.1.0",
  "name" : "FrExpositionRadiations",
  "title" : "Exposition aux radiations",
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
  "description" : "Section Exposition aux radiations",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrExpositionRadiations",
        "path" : "FrExpositionRadiations",
        "short" : "Exposition aux radiations",
        "definition" : "Section Exposition aux radiations"
      },
      {
        "id" : "FrExpositionRadiations.titreSection",
        "path" : "FrExpositionRadiations.titreSection",
        "min" : 1
      },
      {
        "id" : "FrExpositionRadiations.sousSection",
        "path" : "FrExpositionRadiations.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrExpositionRadiations.entree.autorisationExposition",
        "path" : "FrExpositionRadiations.entree.autorisationExposition",
        "short" : "Entrée autorisation à l'exposition aux rayonnements ionisants",
        "definition" : "Entrée autorisation à l'exposition aux rayonnements ionisants",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAutorisationExposition"
          }
        ]
      },
      {
        "id" : "FrExpositionRadiations.entree.quantiteExposition",
        "path" : "FrExpositionRadiations.entree.quantiteExposition",
        "short" : "Entrée Quantité",
        "definition" : "Entrée Quantité",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrQuantiteExposition"
          }
        ]
      }
    ]
  }
}

```
