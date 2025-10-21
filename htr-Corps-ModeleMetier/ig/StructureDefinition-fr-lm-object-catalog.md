# Modèle logique métier - FR LM Object Catalog - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Object Catalog**

## Logical Model: Modèle logique métier - FR LM Object Catalog 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMObjectCatalog |

 
Section Object Catalog 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Acte d'imagerie](StructureDefinition-fr-lm-acte-imagerie.md) and [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-object-catalog)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-object-catalog.csv), [Excel](StructureDefinition-fr-lm-object-catalog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-object-catalog",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog",
  "version" : "0.1.0",
  "name" : "FRLMObjectCatalog",
  "title" : "Modèle logique métier - FR LM Object Catalog",
  "status" : "draft",
  "date" : "2025-10-21T12:36:21+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-object-catalog",
        "path" : "fr-lm-object-catalog",
        "short" : "Modèle logique métier - FR LM Object Catalog",
        "definition" : "Section Object Catalog"
      },
      {
        "id" : "fr-lm-object-catalog.titreSection",
        "path" : "fr-lm-object-catalog.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-object-catalog.sousSection",
        "path" : "fr-lm-object-catalog.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-object-catalog.entree.examenImagerie",
        "path" : "fr-lm-object-catalog.entree.examenImagerie",
        "short" : "Entrée Examen imagerie",
        "definition" : "Entrée Examen imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examen-imagerie"
          }
        ]
      }
    ]
  }
}

```
