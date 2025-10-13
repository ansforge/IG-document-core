# Produit de santé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Produit de santé**

## Logical Model: Produit de santé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrProduitSante |

 
Produit de santé 

**Usages:**

* Use this Logical Model: [Dose d'antigène](StructureDefinition-FrDoseAntigene.md), [Référence item prescription](StructureDefinition-FrReferenceItemPrescription.md), [Traitement](StructureDefinition-FrTraitement.md), [Traitement dispensé](StructureDefinition-FrTraitementDispense.md)...Show 5 more,[Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md),[Traitement Prescrit Subordonnee](StructureDefinition-FrTraitementPrescritSubordonne.md),[Traitement subordonné](StructureDefinition-FrTraitementSubordonne.md),[Vaccin recommandé](StructureDefinition-FrVaccinRecommande.md)and[Vaccination](StructureDefinition-FrVaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrProduitSante)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrProduitSante.csv), [Excel](StructureDefinition-FrProduitSante.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrProduitSante",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante",
  "version" : "0.1.0",
  "name" : "FrProduitSante",
  "title" : "Produit de santé",
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
  "description" : "Produit de santé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrProduitSante",
        "path" : "FrProduitSante",
        "short" : "Produit de santé",
        "definition" : "Produit de santé"
      },
      {
        "id" : "FrProduitSante.medicament",
        "path" : "FrProduitSante.medicament",
        "short" : "Médicament",
        "definition" : "Médicament",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.codeProduit",
        "path" : "FrProduitSante.medicament.codeProduit",
        "short" : "Code du produit de santé",
        "definition" : "Code du produit de santé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.codeProduit.autreCodification",
        "path" : "FrProduitSante.medicament.codeProduit.autreCodification",
        "short" : "Produit de santé / Autre codification",
        "definition" : "Produit de santé / Autre codification",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.nomProduit",
        "path" : "FrProduitSante.medicament.nomProduit",
        "short" : "Nom du produit (contenant aussi le dosage et la forme galénique)",
        "definition" : "Nom du produit (contenant aussi le dosage et la forme galénique)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.formeGalenique",
        "path" : "FrProduitSante.medicament.formeGalenique",
        "short" : "Forme galénique du produit de santé",
        "definition" : "Forme galénique du produit de santé",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.numeroLot",
        "path" : "FrProduitSante.medicament.numeroLot",
        "short" : "Numéro de lot ",
        "definition" : "Numéro de lot ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.dateExpiration",
        "path" : "FrProduitSante.medicament.dateExpiration",
        "short" : "Date d'expiration du produit",
        "definition" : "Date d'expiration du produit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.conditionnement",
        "path" : "FrProduitSante.medicament.conditionnement",
        "short" : "Conditionnement",
        "definition" : "Conditionnement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.equivalentGenerique",
        "path" : "FrProduitSante.medicament.equivalentGenerique",
        "short" : "Code de regroupement ATC",
        "definition" : "Code de regroupement ATC",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProduitSante.medicament.substanceActive",
        "path" : "FrProduitSante.medicament.substanceActive",
        "short" : "Substance active",
        "definition" : "Substance active",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      }
    ]
  }
}

```
