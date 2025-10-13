# Document attaché - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document attaché**

## Logical Model: Document attaché 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentAttache | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDocumentAttache |

 
Entrée Document attaché 

**Usages:**

* Use this Logical Model: [Document PDF copie](StructureDefinition-FrDocumentPDFCopie.md), [Documents ajoutés](StructureDefinition-FrDocumentsAjoutes.md) and [Résultats de laboratoire de biologie de seconde intention](StructureDefinition-FrResultatsLaboratoireBiologieSecondeIntention.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDocumentAttache)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDocumentAttache.csv), [Excel](StructureDefinition-FrDocumentAttache.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDocumentAttache",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentAttache",
  "version" : "0.1.0",
  "name" : "FrDocumentAttache",
  "title" : "Document attaché",
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
  "description" : "Entrée Document attaché",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentAttache",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDocumentAttache",
        "path" : "FrDocumentAttache",
        "short" : "Document attaché",
        "definition" : "Entrée Document attaché"
      },
      {
        "id" : "FrDocumentAttache.identifiant",
        "path" : "FrDocumentAttache.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.code",
        "path" : "FrDocumentAttache.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.statut",
        "path" : "FrDocumentAttache.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.date",
        "path" : "FrDocumentAttache.date",
        "short" : "Date de l'entrée",
        "definition" : "Date de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.typeDocumentAttache",
        "path" : "FrDocumentAttache.typeDocumentAttache",
        "short" : "Type de document attaché",
        "definition" : "Type de document attaché",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.typeDocumentAttache.natureDocument",
        "path" : "FrDocumentAttache.typeDocumentAttache.natureDocument",
        "short" : "Nature du document",
        "definition" : "Nature du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.documentAttache",
        "path" : "FrDocumentAttache.documentAttache",
        "short" : "Bloc document attaché",
        "definition" : "Bloc document attaché",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.documentAttache.observationMedia",
        "path" : "FrDocumentAttache.documentAttache.observationMedia",
        "short" : "Observation média",
        "definition" : "Observation média",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.documentAttache.observationMedia.identifiant",
        "path" : "FrDocumentAttache.documentAttache.observationMedia.identifiant",
        "short" : "Identifiant de l’observationMedia",
        "definition" : "Identifiant de l’observationMedia",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDocumentAttache.documentAttache.observationMedia.documentAttacheEncode",
        "path" : "FrDocumentAttache.documentAttache.observationMedia.documentAttacheEncode",
        "short" : "Document attaché encodé en Base64",
        "definition" : "Document attaché encodé en Base64",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      }
    ]
  }
}

```
