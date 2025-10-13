# Référence item plan traitement - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Référence item plan traitement**

## Logical Model: Référence item plan traitement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPlanTraitement | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrReferenceItemPlanTraitement |

 
Entrée Référence item plan traitement 

**Usages:**

* Use this Logical Model: [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrReferenceItemPlanTraitement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrReferenceItemPlanTraitement.csv), [Excel](StructureDefinition-FrReferenceItemPlanTraitement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrReferenceItemPlanTraitement",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPlanTraitement",
  "version" : "0.1.0",
  "name" : "FrReferenceItemPlanTraitement",
  "title" : "Référence item plan traitement",
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
  "description" : "Entrée Référence item plan traitement",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPlanTraitement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrReferenceItemPlanTraitement",
        "path" : "FrReferenceItemPlanTraitement",
        "short" : "Référence item plan traitement",
        "definition" : "Entrée Référence item plan traitement"
      },
      {
        "id" : "FrReferenceItemPlanTraitement.identifiant",
        "path" : "FrReferenceItemPlanTraitement.identifiant",
        "short" : "Identifiant de la ligne de traitement dans un plan de traitement",
        "definition" : "Identifiant de la ligne de traitement dans un plan de traitement",
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
        "id" : "FrReferenceItemPlanTraitement.code",
        "path" : "FrReferenceItemPlanTraitement.code",
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
        "id" : "FrReferenceItemPlanTraitement.produitSante",
        "path" : "FrReferenceItemPlanTraitement.produitSante",
        "short" : "Produit de santé",
        "definition" : "Produit de santé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPlanTraitement.auteur",
        "path" : "FrReferenceItemPlanTraitement.auteur",
        "short" : "Auteur de la ligne de traitement",
        "definition" : "Auteur de la ligne de traitement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPlanTraitement.traitementPrescrit",
        "path" : "FrReferenceItemPlanTraitement.traitementPrescrit",
        "short" : "Item plan traitement",
        "definition" : "Item plan traitement",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPlanTraitement.reference",
        "path" : "FrReferenceItemPlanTraitement.reference",
        "short" : "ID of parent container of referenced item",
        "definition" : "ID of parent container of referenced item",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPlanTraitement.reference.externalDocument",
        "path" : "FrReferenceItemPlanTraitement.reference.externalDocument",
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
        "id" : "FrReferenceItemPlanTraitement.reference.externalDocument.identifiant",
        "path" : "FrReferenceItemPlanTraitement.reference.externalDocument.identifiant",
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
      }
    ]
  }
}

```
