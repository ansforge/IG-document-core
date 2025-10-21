# CDA - representedOrganization - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDA - representedOrganization**

## Logical Model: CDA - representedOrganization 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-represented-organization | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRCDARepresentedOrganization |

 
L’élément de l’en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel. 

**Usages:**

* Use this Logical Model Profile: [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md), [CDA - assignedEntity](StructureDefinition-fr-cda-assigned-entity.md), [CDA - associatedEntity](StructureDefinition-fr-cda-associated-entity.md) and [CDA - intendedRecipient](StructureDefinition-fr-cda-intended-recipient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-cda-represented-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-cda-represented-organization.csv), [Excel](StructureDefinition-fr-cda-represented-organization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-represented-organization",
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
      "valueString" : "organization"
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-represented-organization",
  "version" : "0.1.0",
  "name" : "FRCDARepresentedOrganization",
  "title" : "CDA - representedOrganization",
  "status" : "draft",
  "date" : "2025-10-21T12:29:29+00:00",
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
  "description" : "L'élément de l'en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/Organization",
  "baseDefinition" : "http://hl7.org/cda/stds/core/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.typeId.nullFlavor",
        "path" : "Organization.typeId.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "Organization.typeId.assigningAuthorityName",
        "path" : "Organization.typeId.assigningAuthorityName",
        "max" : "0"
      },
      {
        "id" : "Organization.typeId.displayable",
        "path" : "Organization.typeId.displayable",
        "max" : "0"
      },
      {
        "id" : "Organization.determinerCode",
        "path" : "Organization.determinerCode",
        "max" : "0"
      },
      {
        "id" : "Organization.id",
        "path" : "Organization.id",
        "short" : "Identifiant de la structure : \n- Si le responsable est un professionnel : Identifiant de la structure pour le compte de laquelle intervient le professionnel. \n- Si le responsable est un SNR : SIREN de l'éditeur. \n- Si le responsable est le DP : Identifiant du DP."
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Nom de la structure : \n- Si le responsable est un professionnel : Nom de la structure. \n- Si le responsable est un SNR : Nom de l'éditeur. \n- Si le responsable est le DP : Dossier Pharmaceutique."
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "short" : "Coordonnées télécom de la structure :  \n- Si le responsable est un professionnel : Coordonnées télécom de la structure. \n- Si le responsable est un SNR : non renseigné. \n- Si le responsable est le DP : non renseigné."
      },
      {
        "id" : "Organization.addr",
        "path" : "Organization.addr",
        "short" : "Adresse géopostale de la structure : \n- Si le responsable est un professionnel : Adresse géopostale de la structure. \n- Si le responsable est un SNR : non renseigné. \n- Si le responsable est le DP : non renseigné."
      },
      {
        "id" : "Organization.standardIndustryClassCode",
        "path" : "Organization.standardIndustryClassCode",
        "short" : "Cadre d'exercice du professionnel : \n- Si le responsable est un professionnel : Cadre d'exercice. \n- Si le responsable est un SNR : non renseigné. \n- Si le responsable est le DP : non renseigné."
      },
      {
        "id" : "Organization.standardIndustryClassCode.nullFlavor",
        "path" : "Organization.standardIndustryClassCode.nullFlavor",
        "max" : "0"
      },
      {
        "id" : "Organization.standardIndustryClassCode.code",
        "path" : "Organization.standardIndustryClassCode.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS"
        }
      }
    ]
  }
}

```
