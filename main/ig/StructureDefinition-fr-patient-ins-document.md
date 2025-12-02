# FR Patient INS Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Patient INS Document**

## Resource Profile: FR Patient INS Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:FRPatientINSDocument |

 
Ce profil représente le patient concerné par le document. 

**Utilisations:**

* Utiliser ce Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référer à ce Profil: [FR Composition Document](StructureDefinition-fr-composition-document.md)

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
  "name" : "FRPatientINSDocument",
  "title" : "FR Patient INS Document",
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
        ]
      }
    ]
  }
}

```
