# CDA - legalAuthenticator - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - legalAuthenticator**

## Logical Model: CDA - legalAuthenticator 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:FrLegalAuthenticator |

 
L’élément de l’en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. 

**Usages:**

* Use this Logical Model Profile: [CDA - clinicalDocument](StructureDefinition-fr-core-clinical-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-core-legal-authenticator)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-legal-authenticator.csv), [Excel](StructureDefinition-fr-core-legal-authenticator.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-legal-authenticator",
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
      "valueString" : "legalAuthenticator"
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator",
  "version" : "0.1.0",
  "name" : "FrLegalAuthenticator",
  "title" : "CDA - legalAuthenticator",
  "status" : "draft",
  "date" : "2025-10-20T09:54:02+00:00",
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
  "description" : "L'élément de l'en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l'établissement participant.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/LegalAuthenticator",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/LegalAuthenticator",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "LegalAuthenticator.nullFlavor",
        "path" : "LegalAuthenticator.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.typeId.nullFlavor",
        "path" : "LegalAuthenticator.typeId.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.typeId.assigningAuthorityName",
        "path" : "LegalAuthenticator.typeId.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.typeId.displayable",
        "path" : "LegalAuthenticator.typeId.displayable",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.contextControlCode",
        "path" : "LegalAuthenticator.contextControlCode",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.time",
        "path" : "LegalAuthenticator.time",
        "short" : "Date et heure de la prise de responsabilité"
      },
      {
        "id" : "LegalAuthenticator.time.value",
        "path" : "LegalAuthenticator.time.value",
        "short" : "Date et heure de la prise de responsabilité précisée à la seconde avec précision du décalage par rapport au temps universel (UTC)"
      },
      {
        "id" : "LegalAuthenticator.signatureCode",
        "path" : "LegalAuthenticator.signatureCode",
        "short" : "signatureCode confirme la prise la responsabilité du document."
      },
      {
        "id" : "LegalAuthenticator.signatureCode.sdtcValueSet",
        "path" : "LegalAuthenticator.signatureCode.sdtcValueSet",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.signatureCode.sdtcValueSetVersion",
        "path" : "LegalAuthenticator.signatureCode.sdtcValueSetVersion",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.sdtcSignatureText",
        "path" : "LegalAuthenticator.sdtcSignatureText",
        "max" : "0"
      },
      {
        "id" : "LegalAuthenticator.assignedEntity",
        "path" : "LegalAuthenticator.assignedEntity",
        "short" : "Responsable du document",
        "type" : [
          {
            "code" : "http://hl7.org/cda/stds/core/StructureDefinition/AssignedEntity",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"
            ]
          }
        ]
      },
      {
        "id" : "LegalAuthenticator.assignedEntity.code",
        "path" : "LegalAuthenticator.assignedEntity.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS"
        }
      }
    ]
  }
}

```
