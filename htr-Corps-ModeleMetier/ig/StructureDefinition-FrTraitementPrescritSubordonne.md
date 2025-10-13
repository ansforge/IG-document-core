# Traitement Prescrit Subordonnee - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitement Prescrit Subordonnee**

## Logical Model: Traitement Prescrit Subordonnee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescritSubordonne | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitementPrescritSubordonne |

 
Entrée Traitement prescrit subordonne 

**Usages:**

* Use this Logical Model: [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitementPrescritSubordonne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitementPrescritSubordonne.csv), [Excel](StructureDefinition-FrTraitementPrescritSubordonne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitementPrescritSubordonne",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescritSubordonne",
  "version" : "0.1.0",
  "name" : "FrTraitementPrescritSubordonne",
  "title" : "Traitement Prescrit Subordonnee",
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
  "description" : "Entrée Traitement prescrit subordonne",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescritSubordonne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitementPrescritSubordonne",
        "path" : "FrTraitementPrescritSubordonne",
        "short" : "Traitement Prescrit Subordonnee",
        "definition" : "Entrée Traitement prescrit subordonne"
      },
      {
        "id" : "FrTraitementPrescritSubordonne.identifiant",
        "path" : "FrTraitementPrescritSubordonne.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescritSubordonne.description",
        "path" : "FrTraitementPrescritSubordonne.description",
        "short" : "Partie narrative de l’entrée",
        "definition" : "Partie narrative de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescritSubordonne.status",
        "path" : "FrTraitementPrescritSubordonne.status",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescritSubordonne.frequenceAdministration",
        "path" : "FrTraitementPrescritSubordonne.frequenceAdministration",
        "short" : "Fréquence d'administration",
        "definition" : "Fréquence d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescritSubordonne.dose",
        "path" : "FrTraitementPrescritSubordonne.dose",
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
        "id" : "FrTraitementPrescritSubordonne.rythmeAdministration[x]",
        "path" : "FrTraitementPrescritSubordonne.rythmeAdministration[x]",
        "short" : "Rythme d'administration",
        "definition" : "Rythme d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescritSubordonne.produitSante",
        "path" : "FrTraitementPrescritSubordonne.produitSante",
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
        "id" : "FrTraitementPrescritSubordonne.precondition",
        "path" : "FrTraitementPrescritSubordonne.precondition",
        "short" : "Précondition à l'utilisation du médicament",
        "definition" : "Précondition à l'utilisation du médicament",
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
