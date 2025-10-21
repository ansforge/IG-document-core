# Fr Patient INS Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr Patient INS Document**

## Resource Profile: Fr Patient INS Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrPatientINSDocument |

 
Ce profil représente le patient concerné par le document. 

**Usages:**

* Use this Profile: [Fr Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [Fr Composition Document](StructureDefinition-fr-composition-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-patient-ins-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-patient-ins-document.csv), [Excel](StructureDefinition-fr-patient-ins-document.xlsx), [Schematron](StructureDefinition-fr-patient-ins-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-patient-ins-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document",
  "version" : "0.1.0",
  "name" : "FrPatientINSDocument",
  "title" : "Fr Patient INS Document",
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
  "description" : "Ce profil représente le patient concerné par le document.",
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
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
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
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient.name:usualName",
        "path" : "Patient.name",
        "sliceName" : "usualName"
      },
      {
        "id" : "Patient.name:usualName.family",
        "path" : "Patient.name.family",
        "short" : "Nom utilisé"
      },
      {
        "id" : "Patient.name:usualName.given",
        "path" : "Patient.name.given",
        "short" : "Prénom utilisé",
        "max" : "1"
      },
      {
        "id" : "Patient.name:officialName",
        "path" : "Patient.name",
        "sliceName" : "officialName"
      },
      {
        "id" : "Patient.name:officialName.extension:birth-list-given-name",
        "path" : "Patient.name.extension",
        "sliceName" : "birth-list-given-name",
        "short" : "Liste des prénoms de l'acte de naissance"
      },
      {
        "id" : "Patient.name:officialName.family",
        "path" : "Patient.name.family",
        "short" : "Nom de naissance"
      },
      {
        "id" : "Patient.name:officialName.given",
        "path" : "Patient.name.given",
        "short" : "Premier prénom de l'acte de naissance"
      },
      {
        "id" : "Patient.contact.relationship:Role",
        "path" : "Patient.contact.relationship",
        "sliceName" : "Role",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-role-informateur-cisis"
        }
      },
      {
        "id" : "Patient.contact.relationship:RelationType",
        "path" : "Patient.contact.relationship",
        "sliceName" : "RelationType",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"
        }
      },
      {
        "id" : "Patient.contact.name",
        "path" : "Patient.contact.name",
        "min" : 1,
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-human-name-document"
            ]
          }
        ]
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitioner-document"
            ]
          }
        ],
        "constraint" : [
          {
            "key" : "pat-gp-1",
            "severity" : "error",
            "human" : "Le generalPractitioner doit être un PractitionerRole contenant un code[typeCode] fixé à 'INF'.",
            "expression" : "resolve().code.coding.where(code='INF').exists()",
            "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"
          },
          {
            "key" : "pat-gp-2",
            "severity" : "error",
            "human" : "Le generalPractitioner doit être un PractitionerRole contenant un code[functionCode] fixé à 'PCP'.",
            "expression" : "resolve().code.coding.where(code='PCP').exists()",
            "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"
          },
          {
            "key" : "pat-gp-3",
            "severity" : "error",
            "human" : "Le generalPractitioner doit être un PractitionerRole contenant un code[classCode] fixé à 'PROV'.",
            "expression" : "resolve().code.coding.where(code='PROV').exists()",
            "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"
          }
        ]
      }
    ]
  }
}

```
