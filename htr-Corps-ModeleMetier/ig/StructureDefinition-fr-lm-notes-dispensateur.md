# Modèle logique métier - FR LM Notes du dispensateur - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Notes du dispensateur**

## Logical Model: Modèle logique métier - FR LM Notes du dispensateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-notes-dispensateur | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMNotesDispensateur |

 
Entrée Notes du dispensateur 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement dispensé](StructureDefinition-fr-lm-traitement-dispense.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-notes-dispensateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-notes-dispensateur.csv), [Excel](StructureDefinition-fr-lm-notes-dispensateur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-notes-dispensateur",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-notes-dispensateur",
  "version" : "0.1.0",
  "name" : "FRLMNotesDispensateur",
  "title" : "Modèle logique métier - FR LM Notes du dispensateur",
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
  "description" : "Entrée Notes du dispensateur",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-notes-dispensateur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-notes-dispensateur",
        "path" : "fr-lm-notes-dispensateur",
        "short" : "Modèle logique métier - FR LM Notes du dispensateur",
        "definition" : "Entrée Notes du dispensateur"
      },
      {
        "id" : "fr-lm-notes-dispensateur.identifiant",
        "path" : "fr-lm-notes-dispensateur.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier"
            ]
          }
        ]
      },
      {
        "id" : "fr-lm-notes-dispensateur.code",
        "path" : "fr-lm-notes-dispensateur.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-notes-dispensateur.description",
        "path" : "fr-lm-notes-dispensateur.description",
        "short" : "Notes du dispensateur sous forme textuelle",
        "definition" : "Notes du dispensateur sous forme textuelle",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "fr-lm-notes-dispensateur.statut",
        "path" : "fr-lm-notes-dispensateur.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      }
    ]
  }
}

```
