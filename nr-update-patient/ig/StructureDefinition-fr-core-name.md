# CDA - name - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - name**

## Logical Model: CDA - name 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-name | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrName |

 
L’élément de l’en-tête du CDA name correspond au nom d’une personne physique. 

**Usages:**

* Use this Logical Model: [CDA - assignedPerson](StructureDefinition-fr-core-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-core-name)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-name.csv), [Excel](StructureDefinition-fr-core-name.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-name",
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
      "valueString" : "name"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-container",
      "valueUri" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-name",
  "version" : "0.1.0",
  "name" : "FrName",
  "title" : "CDA - name",
  "status" : "draft",
  "date" : "2025-10-21T14:02:08+00:00",
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
  "description" : "L'élément de l'en-tête du CDA name correspond au nom d'une personne physique.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-name",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/PN",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-core-name",
        "path" : "fr-core-name",
        "short" : "CDA - name",
        "definition" : "L'élément de l'en-tête du CDA name correspond au nom d'une personne physique."
      },
      {
        "id" : "fr-core-name.nullFlavor",
        "path" : "fr-core-name.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "fr-core-name.use",
        "path" : "fr-core-name.use",
        "max" : "0"
      },
      {
        "id" : "fr-core-name.item.delimiter",
        "path" : "fr-core-name.item.delimiter",
        "max" : "0"
      },
      {
        "id" : "fr-core-name.item.xmlText",
        "path" : "fr-core-name.item.xmlText",
        "max" : "0"
      },
      {
        "id" : "fr-core-name.validTime",
        "path" : "fr-core-name.validTime",
        "max" : "0"
      }
    ]
  }
}

```
