# Fr Device Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr Device Document**

## Resource Profile: Fr Device Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-auteur-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrDeviceAuteurDocument |

 
Ce profil représente le système auteur du document. 

**Usages:**

* Use this Profile: [Fr Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [Fr Composition Document](StructureDefinition-fr-composition-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-device-auteur-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-device-auteur-document.csv), [Excel](StructureDefinition-fr-device-auteur-document.xlsx), [Schematron](StructureDefinition-fr-device-auteur-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-device-auteur-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-auteur-document",
  "version" : "0.1.0",
  "name" : "FrDeviceAuteurDocument",
  "title" : "Fr Device Document",
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
  "description" : "Ce profil représente le système auteur du document.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device.identifier",
        "path" : "Device.identifier",
        "min" : 1
      },
      {
        "id" : "Device.deviceName.name",
        "path" : "Device.deviceName.name",
        "short" : "Nom du modèle du système"
      },
      {
        "id" : "Device.deviceName.type",
        "path" : "Device.deviceName.type",
        "short" : "Nom du système"
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "short" : "Profession / savoir-faire ou rôle",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-systeme-cisis"
        }
      },
      {
        "id" : "Device.owner",
        "path" : "Device.owner",
        "short" : "Structure",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-organization-document"
            ]
          }
        ]
      }
    ]
  }
}

```
