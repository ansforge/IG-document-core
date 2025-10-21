# Modèle logique métier - FR LM Directives-anticipées - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Directives-anticipées**

## Logical Model: Modèle logique métier - FR LM Directives-anticipées 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMDirectivesAnticipees |

 
Section Directives anticipées 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-directives-anticipees)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-directives-anticipees.csv), [Excel](StructureDefinition-fr-lm-directives-anticipees.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-directives-anticipees",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees",
  "version" : "0.1.0",
  "name" : "FRLMDirectivesAnticipees",
  "title" : "Modèle logique métier - FR LM Directives-anticipées",
  "status" : "draft",
  "date" : "2025-10-21T12:36:21+00:00",
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
  "description" : "Section Directives anticipées",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-directives-anticipees",
        "path" : "fr-lm-directives-anticipees",
        "short" : "Modèle logique métier - FR LM Directives-anticipées",
        "definition" : "Section Directives anticipées"
      },
      {
        "id" : "fr-lm-directives-anticipees.titreSection",
        "path" : "fr-lm-directives-anticipees.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-directives-anticipees.sousSection",
        "path" : "fr-lm-directives-anticipees.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-directives-anticipees.entree.directiveAnticipee",
        "path" : "fr-lm-directives-anticipees.entree.directiveAnticipee",
        "short" : "Entrée Directive anticipée",
        "definition" : "Entrée Directive anticipée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directive-anticipee"
          }
        ]
      }
    ]
  }
}

```
