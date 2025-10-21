# CDA - parentDocument - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - parentDocument**

## Logical Model: CDA - parentDocument 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-parent-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrParentDocument |

 
L’élément de l’en-tête du CDA parentDocument permet de représenter le document de référence. 

**Usages:**

* Use this Logical Model Profile: [CDA - relatedDocument](StructureDefinition-fr-core-related-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-core-parent-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-parent-document.csv), [Excel](StructureDefinition-fr-core-parent-document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-parent-document",
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
      "valueString" : "parentDocument"
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-parent-document",
  "version" : "0.1.0",
  "name" : "FrParentDocument",
  "title" : "CDA - parentDocument",
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
  "description" : "L'élément de l'en-tête du CDA parentDocument permet de représenter le document de référence.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/ParentDocument",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/ParentDocument",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ParentDocument.nullFlavor",
        "path" : "ParentDocument.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "ParentDocument.id",
        "path" : "ParentDocument.id",
        "short" : "Identifiant unique du document de référence",
        "max" : "1"
      },
      {
        "id" : "ParentDocument.id.nullFlavor",
        "path" : "ParentDocument.id.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "ParentDocument.id.assigningAuthorityName",
        "path" : "ParentDocument.id.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "ParentDocument.id.displayable",
        "path" : "ParentDocument.id.displayable",
        "max" : "0"
      },
      {
        "id" : "ParentDocument.id.root",
        "path" : "ParentDocument.id.root",
        "short" : "Valeur de l'OID du document de référence",
        "min" : 1
      },
      {
        "id" : "ParentDocument.id.extension",
        "path" : "ParentDocument.id.extension",
        "short" : "Chaine de caractères du document de référence"
      }
    ]
  }
}

```
