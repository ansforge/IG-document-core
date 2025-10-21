# Modèle logique métier - FR LM Acte d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Acte d'imagerie**

## Logical Model: Modèle logique métier - FR LM Acte d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMActeImagerie |

 
Section Acte d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-acte-imagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-acte-imagerie.csv), [Excel](StructureDefinition-fr-lm-acte-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-acte-imagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMActeImagerie",
  "title" : "Modèle logique métier - FR LM Acte d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-acte-imagerie",
        "path" : "fr-lm-acte-imagerie",
        "short" : "Modèle logique métier - FR LM Acte d'imagerie",
        "definition" : "Section Acte d'imagerie"
      },
      {
        "id" : "fr-lm-acte-imagerie.titreSection",
        "path" : "fr-lm-acte-imagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-acte-imagerie.sousSection.complicationsActe",
        "path" : "fr-lm-acte-imagerie.sousSection.complicationsActe",
        "short" : "Section Complications Acte",
        "definition" : "Section Complications Acte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte"
          }
        ]
      },
      {
        "id" : "fr-lm-acte-imagerie.sousSection.expositionsRadiations",
        "path" : "fr-lm-acte-imagerie.sousSection.expositionsRadiations",
        "short" : "Section Expositions aux radiations",
        "definition" : "Section Expositions aux radiations",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations"
          }
        ]
      },
      {
        "id" : "fr-lm-acte-imagerie.sousSection.catalogueObjects",
        "path" : "fr-lm-acte-imagerie.sousSection.catalogueObjects",
        "short" : "Section Object catalog",
        "definition" : "Section Object catalog",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog"
          }
        ]
      },
      {
        "id" : "fr-lm-acte-imagerie.entree.techniqueImagerie",
        "path" : "fr-lm-acte-imagerie.entree.techniqueImagerie",
        "short" : "Entrée technique d'imagerie",
        "definition" : "Entrée technique d'imagerie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie"
          }
        ]
      },
      {
        "id" : "fr-lm-acte-imagerie.entree.administrationProduits",
        "path" : "fr-lm-acte-imagerie.entree.administrationProduits",
        "short" : "Produits de santé administrés pendant l'acte d'imagerie",
        "definition" : "Produits de santé administrés pendant l'acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-administration-produit-de-sante"
          }
        ]
      }
    ]
  }
}

```
