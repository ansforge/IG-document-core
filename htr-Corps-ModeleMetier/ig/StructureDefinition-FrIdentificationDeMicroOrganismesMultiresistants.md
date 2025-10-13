# Identification de micro-organismes multirésistants - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identification de micro-organismes multirésistants**

## Logical Model: Identification de micro-organismes multirésistants 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIdentificationDeMicroOrganismesMultiresistants | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrIdentificationDeMicroOrganismesMultiresistants |

 
Entrée Identification de micro-organismes multirésistants 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrIdentificationDeMicroOrganismesMultiresistants)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrIdentificationDeMicroOrganismesMultiresistants.csv), [Excel](StructureDefinition-FrIdentificationDeMicroOrganismesMultiresistants.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrIdentificationDeMicroOrganismesMultiresistants",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIdentificationDeMicroOrganismesMultiresistants",
  "version" : "0.1.0",
  "name" : "FrIdentificationDeMicroOrganismesMultiresistants",
  "title" : "Identification de micro-organismes multirésistants",
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
  "description" : "Entrée Identification de micro-organismes multirésistants",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIdentificationDeMicroOrganismesMultiresistants",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants",
        "short" : "Identification de micro-organismes multirésistants",
        "definition" : "Entrée Identification de micro-organismes multirésistants"
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.identifiant",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.identifiant",
        "short" : "Identifiant de l’observation",
        "definition" : "Identifiant de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.code",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.code",
        "short" : "Code de l’observation",
        "definition" : "Code de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.description",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.description",
        "short" : "Description narrative de l’observation",
        "definition" : "Description narrative de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.statut",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.statut",
        "short" : "Statut de l’observation",
        "definition" : "Statut de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933)"
        }
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.date",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.date",
        "short" : "Date de l’observation",
        "definition" : "Date de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.valeur",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.valeur",
        "short" : "Description sous forme textuelle des micro-organismes identifiés",
        "definition" : "Description sous forme textuelle des micro-organismes identifiés",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrIdentificationDeMicroOrganismesMultiresistants.auteur",
        "path" : "FrIdentificationDeMicroOrganismesMultiresistants.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
