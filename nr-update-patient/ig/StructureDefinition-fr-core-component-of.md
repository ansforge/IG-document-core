# CDA - componentOf - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - componentOf**

## Logical Model: CDA - componentOf 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrComponentOf |

 
L’élément de l’en-tête du CDA componentOf permet d’associer le document à une prise en charge du patient/usager. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-core-component-of)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-component-of.csv), [Excel](StructureDefinition-fr-core-component-of.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-component-of",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
      "_valueBoolean" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode" : "not-applicable"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-namespace",
      "valueUri" : "urn:hl7-org:v3"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
      "valueString" : "componentOf"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-container",
      "valueUri" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/type-profile-style",
      "valueUri" : "cda"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of",
  "version" : "0.1.0",
  "name" : "FrComponentOf",
  "title" : "CDA - componentOf",
  "status" : "draft",
  "date" : "2025-10-21T13:57:20+00:00",
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
  "description" : "L'élément de l'en-tête du CDA componentOf permet d'associer le document à une prise en charge du patient/usager.",
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
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/ComponentOf",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/ComponentOf",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ComponentOf",
        "path" : "ComponentOf"
      },
      {
        "id" : "ComponentOf.nullFlavor",
        "path" : "ComponentOf.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "ComponentOf.typeId.nullFlavor",
        "path" : "ComponentOf.typeId.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "ComponentOf.typeId.assigningAuthorityName",
        "path" : "ComponentOf.typeId.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "ComponentOf.typeId.displayable",
        "path" : "ComponentOf.typeId.displayable",
        "max" : "0"
      },
      {
        "id" : "ComponentOf.typeCode",
        "path" : "ComponentOf.typeCode",
        "max" : "0"
      },
      {
        "id" : "ComponentOf.encompassingEncounter",
        "path" : "ComponentOf.encompassingEncounter",
        "short" : "Prise en charge",
        "type" : [
          {
            "code" : "http://hl7.org/cda/stds/core/StructureDefinition/EncompassingEncounter",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-encompassing-encounter"
            ]
          }
        ]
      }
    ]
  }
}

```
