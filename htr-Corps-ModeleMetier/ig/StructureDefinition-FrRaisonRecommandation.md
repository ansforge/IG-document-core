# Raison de la recommandation - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Raison de la recommandation**

## Logical Model: Raison de la recommandation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRaisonRecommandation | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrRaisonRecommandation |

 
Section Raison de la recommandation 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrRaisonRecommandation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRaisonRecommandation.csv), [Excel](StructureDefinition-FrRaisonRecommandation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRaisonRecommandation",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRaisonRecommandation",
  "version" : "0.1.0",
  "name" : "FrRaisonRecommandation",
  "title" : "Raison de la recommandation",
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
  "description" : "Section Raison de la recommandation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRaisonRecommandation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrRaisonRecommandation",
        "path" : "FrRaisonRecommandation",
        "short" : "Raison de la recommandation",
        "definition" : "Section Raison de la recommandation"
      },
      {
        "id" : "FrRaisonRecommandation.sousSection",
        "path" : "FrRaisonRecommandation.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrRaisonRecommandation.entree",
        "path" : "FrRaisonRecommandation.entree",
        "min" : 1
      },
      {
        "id" : "FrRaisonRecommandation.entree.observation",
        "path" : "FrRaisonRecommandation.entree.observation",
        "short" : "Entrée Simple observation",
        "definition" : "Entrée Simple observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrRaisonRecommandation.entree.problemes",
        "path" : "FrRaisonRecommandation.entree.problemes",
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
