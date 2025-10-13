# Problèmes actifs - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Problèmes actifs**

## Logical Model: Problèmes actifs 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProblemesActifs | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrProblemesActifs |

 
Section Problèmes actifs 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrProblemesActifs)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrProblemesActifs.csv), [Excel](StructureDefinition-FrProblemesActifs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrProblemesActifs",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProblemesActifs",
  "version" : "0.1.0",
  "name" : "FrProblemesActifs",
  "title" : "Problèmes actifs",
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
  "description" : "Section Problèmes actifs",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProblemesActifs",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrProblemesActifs",
        "path" : "FrProblemesActifs",
        "short" : "Problèmes actifs",
        "definition" : "Section Problèmes actifs"
      },
      {
        "id" : "FrProblemesActifs.titreSection",
        "path" : "FrProblemesActifs.titreSection",
        "min" : 1
      },
      {
        "id" : "FrProblemesActifs.sousSection",
        "path" : "FrProblemesActifs.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrProblemesActifs.entree",
        "path" : "FrProblemesActifs.entree",
        "min" : 1
      },
      {
        "id" : "FrProblemesActifs.entree.problemes",
        "path" : "FrProblemesActifs.entree.problemes",
        "short" : "Entrée Problème",
        "definition" : "Entrée Problème",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      }
    ]
  }
}

```
