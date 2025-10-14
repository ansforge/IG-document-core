# Acte d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acte d'imagerie**

## Logical Model: Acte d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrActeImagerie |

 
Section Acte d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrActeImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrActeImagerie.csv), [Excel](StructureDefinition-FrActeImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrActeImagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeImagerie",
  "version" : "0.1.0",
  "name" : "FrActeImagerie",
  "title" : "Acte d'imagerie",
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
  "description" : "Section Acte d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeImagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrActeImagerie",
        "path" : "FrActeImagerie",
        "short" : "Acte d'imagerie",
        "definition" : "Section Acte d'imagerie"
      },
      {
        "id" : "FrActeImagerie.titreSection",
        "path" : "FrActeImagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrActeImagerie.sousSection.complicationsActe",
        "path" : "FrActeImagerie.sousSection.complicationsActe",
        "short" : "Section Complications Acte",
        "definition" : "Section Complications Acte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComplicationsActe"
          }
        ]
      },
      {
        "id" : "FrActeImagerie.sousSection.expositionsRadiations",
        "path" : "FrActeImagerie.sousSection.expositionsRadiations",
        "short" : "Section Expositions aux radiations",
        "definition" : "Section Expositions aux radiations",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations"
          }
        ]
      },
      {
        "id" : "FrActeImagerie.sousSection.catalogueObjects",
        "path" : "FrActeImagerie.sousSection.catalogueObjects",
        "short" : "Section Object catalog",
        "definition" : "Section Object catalog",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog"
          }
        ]
      },
      {
        "id" : "FrActeImagerie.entree.techniqueImagerie",
        "path" : "FrActeImagerie.entree.techniqueImagerie",
        "short" : "Entrée technique d'imagerie",
        "definition" : "Entrée technique d'imagerie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTechniqueImagerie"
          }
        ]
      },
      {
        "id" : "FrActeImagerie.entree.administrationProduits",
        "path" : "FrActeImagerie.entree.administrationProduits",
        "short" : "Produits de santé administrés pendant l'acte d'imagerie",
        "definition" : "Produits de santé administrés pendant l'acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationProduitDeSante"
          }
        ]
      }
    ]
  }
}

```
