# Modèle métier - Document de référence - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Document de référence**

## Logical Model: Modèle métier - Document de référence 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:DocumentDeReference |

 
Référence un document existant (à remplacer ou transformé). 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/DocumentDeReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DocumentDeReference.csv), [Excel](StructureDefinition-DocumentDeReference.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DocumentDeReference",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference",
  "version" : "0.1.0",
  "name" : "DocumentDeReference",
  "title" : "Modèle métier - Document de référence",
  "status" : "draft",
  "date" : "2025-10-21T14:02:08+00:00",
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
  "description" : "Référence un document existant (à remplacer ou transformé).",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentDeReference",
        "path" : "DocumentDeReference",
        "short" : "Modèle métier - Document de référence",
        "definition" : "Référence un document existant (à remplacer ou transformé).",
        "max" : "1"
      },
      {
        "id" : "DocumentDeReference.typeReference",
        "path" : "DocumentDeReference.typeReference",
        "short" : "Type de référence.",
        "definition" : "Type de référence.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "DocumentDeReference.identifiantUniqueDocument",
        "path" : "DocumentDeReference.identifiantUniqueDocument",
        "short" : "Identifiant unique du document de référence.",
        "definition" : "Identifiant unique du document de référence.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      }
    ]
  }
}

```
