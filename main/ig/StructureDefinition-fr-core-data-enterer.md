# CDA - dataEnterer - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - dataEnterer**

## Logical Model: CDA - dataEnterer 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDataEnterer |

 
L’élément de l’en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document. 

**Usages:**

* Use this Logical Model Profile: [CDA - clinicalDocument](StructureDefinition-fr-core-clinical-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-core-data-enterer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-data-enterer.csv), [Excel](StructureDefinition-fr-core-data-enterer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-data-enterer",
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
      "valueString" : "dataEnterer"
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer",
  "version" : "0.1.0",
  "name" : "FrDataEnterer",
  "title" : "CDA - dataEnterer",
  "status" : "draft",
  "date" : "2025-10-13T15:21:05+00:00",
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
  "description" : "L'élément de l'en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/DataEnterer",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/DataEnterer",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DataEnterer.nullFlavor",
        "path" : "DataEnterer.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "DataEnterer.typeId.nullFlavor",
        "path" : "DataEnterer.typeId.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "DataEnterer.typeId.assigningAuthorityName",
        "path" : "DataEnterer.typeId.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "DataEnterer.typeId.displayable",
        "path" : "DataEnterer.typeId.displayable",
        "max" : "0"
      },
      {
        "id" : "DataEnterer.contextControlCode",
        "path" : "DataEnterer.contextControlCode",
        "max" : "0"
      },
      {
        "id" : "DataEnterer.time",
        "path" : "DataEnterer.time",
        "short" : "Horodatage de la participation de l’opérateur.",
        "min" : 1
      },
      {
        "id" : "DataEnterer.time.value",
        "path" : "DataEnterer.time.value",
        "short" : "Date et heure à laquelle l’opérateur a participé à l’élaboration du document."
      },
      {
        "id" : "DataEnterer.assignedEntity",
        "path" : "DataEnterer.assignedEntity",
        "short" : "Personne physique.",
        "type" : [
          {
            "code" : "http://hl7.org/cda/stds/core/StructureDefinition/AssignedEntity",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"
            ]
          }
        ]
      }
    ]
  }
}

```
