# Directives-anticipées - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Directives-anticipées**

## Logical Model: Directives-anticipées 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectivesAnticipees | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDirectivesAnticipees |

 
Section Directives anticipées 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDirectivesAnticipees)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDirectivesAnticipees.csv), [Excel](StructureDefinition-FrDirectivesAnticipees.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDirectivesAnticipees",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectivesAnticipees",
  "version" : "0.1.0",
  "name" : "FrDirectivesAnticipees",
  "title" : "Directives-anticipées",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectivesAnticipees",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDirectivesAnticipees",
        "path" : "FrDirectivesAnticipees",
        "short" : "Directives-anticipées",
        "definition" : "Section Directives anticipées"
      },
      {
        "id" : "FrDirectivesAnticipees.titreSection",
        "path" : "FrDirectivesAnticipees.titreSection",
        "min" : 1
      },
      {
        "id" : "FrDirectivesAnticipees.sousSection",
        "path" : "FrDirectivesAnticipees.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDirectivesAnticipees.entree.directiveAnticipee",
        "path" : "FrDirectivesAnticipees.entree.directiveAnticipee",
        "short" : "Entrée Directive anticipée",
        "definition" : "Entrée Directive anticipée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectiveAnticipee"
          }
        ]
      }
    ]
  }
}

```
