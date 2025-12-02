# FR Organization Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Organization Document**

## Resource Profile: FR Organization Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-organization-document | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:FROrganizationDocument |

 
Ce profil représente la structure pour le compte de laquelle intervient le professionnel. 

**Utilisations:**

* Utiliser ce Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référer à ce Profil: [FR Composition Document](StructureDefinition-fr-composition-document.md), [FR Device Document](StructureDefinition-fr-device-auteur-document.md) and [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-organization-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-organization-document.csv), [Excel](StructureDefinition-fr-organization-document.xlsx), [Schematron](StructureDefinition-fr-organization-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-organization-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-organization-document",
  "version" : "0.1.0",
  "name" : "FROrganizationDocument",
  "title" : "FR Organization Document",
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
  "description" : "Ce profil représente la structure pour le compte de laquelle intervient le professionnel.",
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
      "identity" : "as-organization-to-mos-ej",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EJ"
    },
    {
      "identity" : "as-organization-to-mos-eg",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EG"
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
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "short" : "Identifiant de la structure\n - Obligatoire dans la structure chargée de la conservation du document(Composition.custodian 1..1)"
      },
      {
        "id" : "Organization.type:standardIndustryClassCode",
        "path" : "Organization.type",
        "sliceName" : "standardIndustryClassCode",
        "short" : "Cadre d'exercice",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS"
        }
      }
    ]
  }
}

```
