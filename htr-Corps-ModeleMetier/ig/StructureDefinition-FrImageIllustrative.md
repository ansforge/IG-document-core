# Image illustrative - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Image illustrative**

## Logical Model: Image illustrative 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImageIllustrative | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrImageIllustrative |

 
Entrée Image illustrative. 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Codes à barres](StructureDefinition-FrCodesAbarres.md), [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrImageIllustrative)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrImageIllustrative.csv), [Excel](StructureDefinition-FrImageIllustrative.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrImageIllustrative",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImageIllustrative",
  "version" : "0.1.0",
  "name" : "FrImageIllustrative",
  "title" : "Image illustrative",
  "status" : "draft",
  "date" : "2025-10-13T08:32:48+00:00",
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
  "description" : "Entrée Image illustrative.",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImageIllustrative",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrImageIllustrative",
        "path" : "FrImageIllustrative",
        "short" : "Image illustrative",
        "definition" : "Entrée Image illustrative."
      },
      {
        "id" : "FrImageIllustrative.identifiant",
        "path" : "FrImageIllustrative.identifiant",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier"
            ]
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.langue",
        "path" : "FrImageIllustrative.langue",
        "short" : "Langue",
        "definition" : "Langue",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.imageEncodee",
        "path" : "FrImageIllustrative.imageEncodee",
        "short" : "Image encodée en Base64",
        "definition" : "Image encodée en Base64",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.imageEncodee.mediaType",
        "path" : "FrImageIllustrative.imageEncodee.mediaType",
        "short" : "'image/gif' ou 'image/jpeg' ou 'image/png' ou 'mage/bm'",
        "definition" : "'image/gif' ou 'image/jpeg' ou 'image/png' ou 'mage/bm'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.imageEncodee.representation",
        "path" : "FrImageIllustrative.imageEncodee.representation",
        "short" : "B64",
        "definition" : "B64",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.subject",
        "path" : "FrImageIllustrative.subject",
        "short" : "Subject",
        "definition" : "Subject",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.specimen",
        "path" : "FrImageIllustrative.specimen",
        "short" : "Specimen",
        "definition" : "Specimen",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.performer",
        "path" : "FrImageIllustrative.performer",
        "short" : "Performer",
        "definition" : "Performer",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.auteur",
        "path" : "FrImageIllustrative.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.informant",
        "path" : "FrImageIllustrative.informant",
        "short" : "Informant",
        "definition" : "Informant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.participant",
        "path" : "FrImageIllustrative.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.entryRelationship",
        "path" : "FrImageIllustrative.entryRelationship",
        "short" : "entryRelationship",
        "definition" : "entryRelationship",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.reference",
        "path" : "FrImageIllustrative.reference",
        "short" : "Reference",
        "definition" : "Reference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrImageIllustrative.precondition",
        "path" : "FrImageIllustrative.precondition",
        "short" : "Precondition",
        "definition" : "Precondition",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      }
    ]
  }
}

```
