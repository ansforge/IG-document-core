# Directive anticipée - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Directive anticipée**

## Logical Model: Directive anticipée 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectiveAnticipee | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDirectiveAnticipee |

 
Entrée Directive anticipée 

**Usages:**

* Use this Logical Model: [Directives-anticipées](StructureDefinition-FrDirectivesAnticipees.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDirectiveAnticipee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDirectiveAnticipee.csv), [Excel](StructureDefinition-FrDirectiveAnticipee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDirectiveAnticipee",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectiveAnticipee",
  "version" : "0.1.0",
  "name" : "FrDirectiveAnticipee",
  "title" : "Directive anticipée",
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
  "description" : "Entrée Directive anticipée",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectiveAnticipee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDirectiveAnticipee",
        "path" : "FrDirectiveAnticipee",
        "short" : "Directive anticipée",
        "definition" : "Entrée Directive anticipée"
      },
      {
        "id" : "FrDirectiveAnticipee.identifiant",
        "path" : "FrDirectiveAnticipee.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.code",
        "path" : "FrDirectiveAnticipee.code",
        "short" : "Type de la directive anticipée",
        "definition" : "Type de la directive anticipée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.description",
        "path" : "FrDirectiveAnticipee.description",
        "short" : "Partie narrative de l'observation",
        "definition" : "Partie narrative de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.statut",
        "path" : "FrDirectiveAnticipee.statut",
        "short" : "Statut de l'observation",
        "definition" : "Statut de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "FrDirectiveAnticipee.date",
        "path" : "FrDirectiveAnticipee.date",
        "short" : "Date de la directive anticipée",
        "definition" : "Date de la directive anticipée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.valeurDirectiveIdentifiee",
        "path" : "FrDirectiveAnticipee.valeurDirectiveIdentifiee",
        "short" : "Procédure autorisée ou pas",
        "definition" : "Procédure autorisée ou pas",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.reference",
        "path" : "FrDirectiveAnticipee.reference",
        "short" : "Référence à un document externe",
        "definition" : "Référence à un document externe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.documentEncapsule",
        "path" : "FrDirectiveAnticipee.documentEncapsule",
        "short" : "Document encapsulé en B64",
        "definition" : "Document encapsulé en B64",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.documentEncapsule.observationMedia",
        "path" : "FrDirectiveAnticipee.documentEncapsule.observationMedia",
        "short" : "Observation média",
        "definition" : "Observation média",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.documentEncapsule.observationMedia.identifiant",
        "path" : "FrDirectiveAnticipee.documentEncapsule.observationMedia.identifiant",
        "short" : "Identifiant de l’observationMedia",
        "definition" : "Identifiant de l’observationMedia",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDirectiveAnticipee.documentEncapsule.observationMedia.documentEncapsuleEncode",
        "path" : "FrDirectiveAnticipee.documentEncapsule.observationMedia.documentEncapsuleEncode",
        "short" : "Document encapsulé encodée en Base64",
        "definition" : "Document encapsulé encodée en Base64",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      }
    ]
  }
}

```
