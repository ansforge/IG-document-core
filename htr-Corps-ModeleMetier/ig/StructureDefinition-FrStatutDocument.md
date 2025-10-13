# Statut du document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut du document**

## Logical Model: Statut du document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocument | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrStatutDocument |

 
Section Statut du document 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrStatutDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrStatutDocument.csv), [Excel](StructureDefinition-FrStatutDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrStatutDocument",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocument",
  "version" : "0.1.0",
  "name" : "FrStatutDocument",
  "title" : "Statut du document",
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
  "description" : "Section Statut du document",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocument",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrStatutDocument",
        "path" : "FrStatutDocument",
        "short" : "Statut du document",
        "definition" : "Section Statut du document"
      },
      {
        "id" : "FrStatutDocument.titreSection",
        "path" : "FrStatutDocument.titreSection",
        "min" : 1
      },
      {
        "id" : "FrStatutDocument.sousSection",
        "path" : "FrStatutDocument.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrStatutDocument.entree",
        "path" : "FrStatutDocument.entree",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "FrStatutDocument.entree.statutDocument",
        "path" : "FrStatutDocument.entree.statutDocument",
        "short" : "Entrée Statut du document",
        "definition" : "Entrée Statut du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocumentEntry"
          }
        ]
      }
    ]
  }
}

```
