# Référence item prescription - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Référence item prescription**

## Logical Model: Référence item prescription 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPrescription | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrReferenceItemPrescription |

 
Entrée Référence item prescription 

**Usages:**

* Use this Logical Model: [Traitement dispensé](StructureDefinition-FrTraitementDispense.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrReferenceItemPrescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrReferenceItemPrescription.csv), [Excel](StructureDefinition-FrReferenceItemPrescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrReferenceItemPrescription",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPrescription",
  "version" : "0.1.0",
  "name" : "FrReferenceItemPrescription",
  "title" : "Référence item prescription",
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
  "description" : "Entrée Référence item prescription",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPrescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrReferenceItemPrescription",
        "path" : "FrReferenceItemPrescription",
        "short" : "Référence item prescription",
        "definition" : "Entrée Référence item prescription"
      },
      {
        "id" : "FrReferenceItemPrescription.identifiant",
        "path" : "FrReferenceItemPrescription.identifiant",
        "short" : "Identifiant de la ligne de prescription",
        "definition" : "Identifiant de la ligne de prescription",
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
        "id" : "FrReferenceItemPrescription.code",
        "path" : "FrReferenceItemPrescription.code",
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
        "id" : "FrReferenceItemPrescription.produitSante",
        "path" : "FrReferenceItemPrescription.produitSante",
        "short" : "Produit de santé",
        "definition" : "Produit de santé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPrescription.auteur",
        "path" : "FrReferenceItemPrescription.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPrescription.traitementPrescrit",
        "path" : "FrReferenceItemPrescription.traitementPrescrit",
        "short" : "Traitement prescrit",
        "definition" : "Traitement prescrit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescrit"
          }
        ]
      },
      {
        "id" : "FrReferenceItemPrescription.reference",
        "path" : "FrReferenceItemPrescription.reference",
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
        "id" : "FrReferenceItemPrescription.reference.externalDocument",
        "path" : "FrReferenceItemPrescription.reference.externalDocument",
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
        "id" : "FrReferenceItemPrescription.reference.externalDocument.identifiant",
        "path" : "FrReferenceItemPrescription.reference.externalDocument.identifiant",
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
