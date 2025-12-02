# FR PractitionerRole Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR PractitionerRole Document**

## Resource Profile: FR PractitionerRole Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:FRPractitionerRoleDocument |

 
Ce profil représente les professionnels de santé et leurs rôles dans le cadre d’un document médical. 

**Utilisations:**

* Utiliser ce Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référer à ce Profil: [FR Composition Document](StructureDefinition-fr-composition-document.md), [FR Encounter Care Document](StructureDefinition-fr-encounter-care-document.md) and [FR Performer Event Extension](StructureDefinition-fr-performer-event-extension.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-practitionerRole-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-practitionerRole-document.csv), [Excel](StructureDefinition-fr-practitionerRole-document.xlsx), [Schematron](StructureDefinition-fr-practitionerRole-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-practitionerRole-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document",
  "version" : "0.1.0",
  "name" : "FRPractitionerRoleDocument",
  "title" : "FR PractitionerRole Document",
  "status" : "draft",
  "date" : "2025-12-02T18:26:21+00:00",
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
  "description" : "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical.",
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
      "identity" : "as-practitioner-role-to-mos-situation-exercice",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitioner-document"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-organization-document"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.code:functionCode",
        "path" : "PractitionerRole.code",
        "sliceName" : "functionCode",
        "short" : "Rôle fonctionnel du professionnel de santé",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "PractitionerRole.code:functionCode.coding",
        "path" : "PractitionerRole.code.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS"
        }
      },
      {
        "id" : "PractitionerRole.code:classCode",
        "path" : "PractitionerRole.code",
        "sliceName" : "classCode",
        "short" : "Professionnel de santé / Non Professionnel de santé",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "PractitionerRole.code:classCode.coding.code",
        "path" : "PractitionerRole.code.coding.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J141-RoleClass-CISIS/FHIR/JDV-J141-RoleClass-CISIS"
        }
      },
      {
        "id" : "PractitionerRole.code:typeCode",
        "path" : "PractitionerRole.code",
        "sliceName" : "typeCode",
        "short" : "Type de participation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "PractitionerRole.code:typeCode.coding",
        "path" : "PractitionerRole.code.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J144-ParticipationType-CISIS/FHIR/JDV-J144-ParticipationType-CISIS"
        }
      }
    ]
  }
}

```
