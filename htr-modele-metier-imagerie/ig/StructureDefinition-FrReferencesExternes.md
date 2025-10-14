# Références externes - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Références externes**

## Logical Model: Références externes 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferencesExternes | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrReferencesExternes |

 
Entrée Références externes 

**Usages:**

* Use this Logical Model: [Education du patient](StructureDefinition-FrEducationPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrReferencesExternes)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrReferencesExternes.csv), [Excel](StructureDefinition-FrReferencesExternes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrReferencesExternes",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferencesExternes",
  "version" : "0.1.0",
  "name" : "FrReferencesExternes",
  "title" : "Références externes",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Entrée Références externes",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferencesExternes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrReferencesExternes",
        "path" : "FrReferencesExternes",
        "short" : "Références externes",
        "definition" : "Entrée Références externes"
      },
      {
        "id" : "FrReferencesExternes.codeReferenceExterne",
        "path" : "FrReferencesExternes.codeReferenceExterne",
        "short" : "Code de l'entrée.",
        "definition" : "Code de l'entrée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrReferencesExternes.blocNarratif",
        "path" : "FrReferencesExternes.blocNarratif",
        "short" : "Partie narrative de l’entrée.",
        "definition" : "Partie narrative de l’entrée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrReferencesExternes.reference",
        "path" : "FrReferencesExternes.reference",
        "short" : "Document référencé",
        "definition" : "Document référencé",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferencesExternes.reference.externalDocument",
        "path" : "FrReferencesExternes.reference.externalDocument",
        "short" : "Document référencé",
        "definition" : "Document référencé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferencesExternes.reference.externalDocument.identifiant",
        "path" : "FrReferencesExternes.reference.externalDocument.identifiant",
        "short" : "Identifiant du document",
        "definition" : "Identifiant du document",
        "min" : 1,
        "max" : "1",
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
        "id" : "FrReferencesExternes.reference.externalDocument.text",
        "path" : "FrReferencesExternes.reference.externalDocument.text",
        "short" : "Référence externe du document",
        "definition" : "Référence externe du document",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferencesExternes.reference.externalDocument.text.reference",
        "path" : "FrReferencesExternes.reference.externalDocument.text.reference",
        "short" : "Cet élément contient l’URL du document",
        "definition" : "Cet élément contient l’URL du document",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      }
    ]
  }
}

```
