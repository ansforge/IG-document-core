# Administration produit de sante - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administration produit de sante**

## Logical Model: Administration produit de sante 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationProduitDeSante | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrAdministrationProduitDeSante |

 
Entrée Administration produit de sante 

**Usages:**

* Use this Logical Model: [Acte d'imagerie](StructureDefinition-FrActeImagerie.md) and [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAdministrationProduitDeSante)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAdministrationProduitDeSante.csv), [Excel](StructureDefinition-FrAdministrationProduitDeSante.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAdministrationProduitDeSante",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationProduitDeSante",
  "version" : "0.1.0",
  "name" : "FrAdministrationProduitDeSante",
  "title" : "Administration produit de sante",
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
  "description" : "Entrée Administration produit de sante",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationProduitDeSante",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAdministrationProduitDeSante",
        "path" : "FrAdministrationProduitDeSante",
        "short" : "Administration produit de sante",
        "definition" : "Entrée Administration produit de sante"
      },
      {
        "id" : "FrAdministrationProduitDeSante.identifiant",
        "path" : "FrAdministrationProduitDeSante.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.description",
        "path" : "FrAdministrationProduitDeSante.description",
        "short" : "Partie narrative de l'entrée",
        "definition" : "Partie narrative de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.statut",
        "path" : "FrAdministrationProduitDeSante.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.voieAdministration",
        "path" : "FrAdministrationProduitDeSante.voieAdministration",
        "short" : "Voie d'administration",
        "definition" : "Voie d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "EDQM (0.4.0.127.0.16.1.1.2.1)"
        }
      },
      {
        "id" : "FrAdministrationProduitDeSante.dose",
        "path" : "FrAdministrationProduitDeSante.dose",
        "short" : "Dose à administrer",
        "definition" : "Dose à administrer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.rythme",
        "path" : "FrAdministrationProduitDeSante.rythme",
        "short" : "Rythme d'administration",
        "definition" : "Rythme d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.medicament",
        "path" : "FrAdministrationProduitDeSante.medicament",
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
        "id" : "FrAdministrationProduitDeSante.medicament.produit",
        "path" : "FrAdministrationProduitDeSante.medicament.produit",
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
        "id" : "FrAdministrationProduitDeSante.medicament.produit.codeProduit",
        "path" : "FrAdministrationProduitDeSante.medicament.produit.codeProduit",
        "short" : "Code du produit",
        "definition" : "Code du produit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "UCD (1.2.250.1.213.2.61) + code ATC"
        }
      },
      {
        "id" : "FrAdministrationProduitDeSante.medicament.produit.codeProduit.autreCodification",
        "path" : "FrAdministrationProduitDeSante.medicament.produit.codeProduit.autreCodification",
        "short" : "Autre(s) codification(s)",
        "definition" : "Autre(s) codification(s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "ATC (2.16.840.1.113883.6.73) or CIS (1.2.250.1.213.2.3.1) or MV (1.2.250.1.213.2.59)"
        }
      },
      {
        "id" : "FrAdministrationProduitDeSante.medicament.produit.nomMarque",
        "path" : "FrAdministrationProduitDeSante.medicament.produit.nomMarque",
        "short" : "Nom de marque du produit",
        "definition" : "Nom de marque du produit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrAdministrationProduitDeSante.medicament.produit.numeroLot",
        "path" : "FrAdministrationProduitDeSante.medicament.produit.numeroLot",
        "short" : "Numéro de lot",
        "definition" : "Numéro de lot",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
