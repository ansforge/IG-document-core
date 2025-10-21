# CDA - participant - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - participant**

## Logical Model: CDA - participant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRCDAParticipant |

 
L’élément de l’en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. 

**Usages:**

* Use this Logical Model Profile: [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-cda-participant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-cda-participant.csv), [Excel](StructureDefinition-fr-cda-participant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-participant",
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
      "valueString" : "participant"
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
  "version" : "0.1.0",
  "name" : "FRCDAParticipant",
  "title" : "CDA - participant",
  "status" : "draft",
  "date" : "2025-10-21T14:51:34+00:00",
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
  "description" : "L'élément de l'en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/Participant1",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/Participant1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Participant1.typeId.nullFlavor",
        "path" : "Participant1.typeId.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "Participant1.typeId.assigningAuthorityName",
        "path" : "Participant1.typeId.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "Participant1.typeId.displayable",
        "path" : "Participant1.typeId.displayable",
        "max" : "0"
      },
      {
        "id" : "Participant1.typeCode",
        "path" : "Participant1.typeCode",
        "short" : "Type de participation"
      },
      {
        "id" : "Participant1.contextControlCode",
        "path" : "Participant1.contextControlCode",
        "max" : "0"
      },
      {
        "id" : "Participant1.functionCode",
        "path" : "Participant1.functionCode",
        "short" : "Rôle fonctionnel"
      },
      {
        "id" : "Participant1.functionCode.nullFlavor",
        "path" : "Participant1.functionCode.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "Participant1.functionCode.code",
        "path" : "Participant1.functionCode.code",
        "short" : "Code issu du JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS"
        }
      },
      {
        "id" : "Participant1.functionCode.codeSystem",
        "path" : "Participant1.functionCode.codeSystem",
        "min" : 1
      },
      {
        "id" : "Participant1.functionCode.codeSystemVersion",
        "path" : "Participant1.functionCode.codeSystemVersion",
        "max" : "0"
      },
      {
        "id" : "Participant1.functionCode.sdtcValueSet",
        "path" : "Participant1.functionCode.sdtcValueSet",
        "max" : "0"
      },
      {
        "id" : "Participant1.functionCode.sdtcValueSetVersion",
        "path" : "Participant1.functionCode.sdtcValueSetVersion",
        "max" : "0"
      },
      {
        "id" : "Participant1.functionCode.originalText",
        "path" : "Participant1.functionCode.originalText",
        "short" : "Précision sur le rôle fonctionnel du participant"
      },
      {
        "id" : "Participant1.time",
        "path" : "Participant1.time",
        "short" : "Date de début et/ou de fin de la participation",
        "min" : 1
      },
      {
        "id" : "Participant1.time.operator",
        "path" : "Participant1.time.operator",
        "max" : "0"
      },
      {
        "id" : "Participant1.time.low",
        "path" : "Participant1.time.low",
        "short" : "Date/heure de début de la participation"
      },
      {
        "id" : "Participant1.time.center",
        "path" : "Participant1.time.center",
        "max" : "0"
      },
      {
        "id" : "Participant1.time.width",
        "path" : "Participant1.time.width",
        "max" : "0"
      },
      {
        "id" : "Participant1.time.high",
        "path" : "Participant1.time.high",
        "short" : "Date/heure de fin de la participation"
      },
      {
        "id" : "Participant1.associatedEntity",
        "path" : "Participant1.associatedEntity",
        "short" : "Identification du participant",
        "type" : [
          {
            "code" : "http://hl7.org/cda/stds/core/StructureDefinition/AssociatedEntity",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-associated-entity"
            ]
          }
        ]
      }
    ]
  }
}

```
