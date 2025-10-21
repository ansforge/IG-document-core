# Fr Encounter Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr Encounter Document**

## Resource Profile: Fr Encounter Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrEncounterDocument |

 
Ce profil représente l’association du document à une prise en charge. 

**Usages:**

* Use this Profile: [Fr Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [Fr Composition Document](StructureDefinition-fr-composition-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-encounter-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-encounter-document.csv), [Excel](StructureDefinition-fr-encounter-document.xlsx), [Schematron](StructureDefinition-fr-encounter-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-encounter-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document",
  "version" : "0.1.0",
  "name" : "FrEncounterDocument",
  "title" : "Fr Encounter Document",
  "status" : "draft",
  "date" : "2025-10-21T14:55:40+00:00",
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
  "description" : "Ce profil représente l'association du document à une prise en charge.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "Type de prise en charge"
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.participant:responsibleParty",
        "path" : "Encounter.participant",
        "sliceName" : "responsibleParty",
        "short" : "Responsable de la prise en charge",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:responsibleParty.type",
        "path" : "Encounter.participant.type",
        "short" : "Type de participation"
      },
      {
        "id" : "Encounter.participant:responsibleParty.type.coding.system",
        "path" : "Encounter.participant.type.coding.system",
        "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_A13-HL7ParticipationType/FHIR/TRE-A13-HL7ParticipationType"
      },
      {
        "id" : "Encounter.participant:responsibleParty.type.coding.code",
        "path" : "Encounter.participant.type.coding.code",
        "patternCode" : "DIS"
      },
      {
        "id" : "Encounter.participant:responsibleParty.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Entité responsable de la prise en charge",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:encounterParticipant",
        "path" : "Encounter.participant",
        "sliceName" : "encounterParticipant",
        "short" : "Personne impliquée dans la prise en charge",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.participant:encounterParticipant.type",
        "path" : "Encounter.participant.type",
        "short" : "Type de participation",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J140-EncounterParticipationType-CISIS/FHIR/JDV-J140-EncounterParticipationType-CISIS"
        }
      },
      {
        "id" : "Encounter.participant:encounterParticipant.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Professionnel impliqué",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "short" : "Date de début et de fin de la prise en charge"
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "short" : "Type sortie"
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.coding.system",
        "path" : "Encounter.hospitalization.dischargeDisposition.coding.system",
        "patternUri" : "urn:oid:1.2.250.1.213.2.14"
      },
      {
        "id" : "Encounter.location",
        "path" : "Encounter.location",
        "short" : "Lieu de la prise en charge",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.location.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-location-document"
            ]
          }
        ]
      }
    ]
  }
}

```
