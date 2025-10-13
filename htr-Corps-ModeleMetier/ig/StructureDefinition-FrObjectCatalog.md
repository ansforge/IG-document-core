# Object Catalog - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Object Catalog**

## Logical Model: Object Catalog 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrObjectCatalog |

 
Section Object Catalog 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md) and [Acte d'imagerie](StructureDefinition-FrActeImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrObjectCatalog)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrObjectCatalog.csv), [Excel](StructureDefinition-FrObjectCatalog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrObjectCatalog",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog",
  "version" : "0.1.0",
  "name" : "FrObjectCatalog",
  "title" : "Object Catalog",
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
  "description" : "Section Object Catalog",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrObjectCatalog",
        "path" : "FrObjectCatalog",
        "short" : "Object Catalog",
        "definition" : "Section Object Catalog"
      },
      {
        "id" : "FrObjectCatalog.titreSection",
        "path" : "FrObjectCatalog.titreSection",
        "min" : 1
      },
      {
        "id" : "FrObjectCatalog.sousSection",
        "path" : "FrObjectCatalog.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrObjectCatalog.entree.examenImagerie",
        "path" : "FrObjectCatalog.entree.examenImagerie",
        "short" : "Entrée Examen imagerie",
        "definition" : "Entrée Examen imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExamenImagerie"
          }
        ]
      }
    ]
  }
}

```
