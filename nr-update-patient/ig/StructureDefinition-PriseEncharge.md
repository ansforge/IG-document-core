# Modèle métier - Association du document à une prise en charge - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Association du document à une prise en charge**

## Logical Model: Modèle métier - Association du document à une prise en charge 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:PriseEncharge |

 
Association du document à une prise en charge du patient/usager par un professionnel ou par une structure. 
* Exemples : 
* Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.
* Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.
 
* Pour un document d’expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n’a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d’activité.
 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/PriseEncharge)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PriseEncharge.csv), [Excel](StructureDefinition-PriseEncharge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PriseEncharge",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge",
  "version" : "0.1.0",
  "name" : "PriseEncharge",
  "title" : "Modèle métier - Association du document à une prise en charge",
  "status" : "draft",
  "date" : "2025-10-21T13:57:20+00:00",
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
  "description" : "Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.\n - Exemples :\n   - Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.\n   - Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.\n - Pour un document d'expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n'a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d'activité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PriseEncharge",
        "path" : "PriseEncharge",
        "short" : "Modèle métier - Association du document à une prise en charge",
        "definition" : "Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.\n - Exemples :\n   - Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.\n   - Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.\n - Pour un document d'expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n'a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d'activité.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "PriseEncharge.identifiantPriseEnCharge",
        "path" : "PriseEncharge.identifiantPriseEnCharge",
        "short" : "Identifiant de la prise en charge.",
        "definition" : "Identifiant de la prise en charge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PriseEncharge.typePriseEnCharge",
        "path" : "PriseEncharge.typePriseEnCharge",
        "short" : "Type de prise en charge.",
        "definition" : "Type de prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PriseEncharge.dateDebutFinPriseEnCharge",
        "path" : "PriseEncharge.dateDebutFinPriseEnCharge",
        "short" : "Date de début et de fin de la prise en charge.",
        "definition" : "Date de début et de fin de la prise en charge.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "PriseEncharge.typeSortie",
        "path" : "PriseEncharge.typeSortie",
        "short" : "Type sortie.",
        "definition" : "Type sortie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PriseEncharge.responsablePriseEnCharge",
        "path" : "PriseEncharge.responsablePriseEnCharge",
        "short" : "Responsable de la prise en charge.",
        "definition" : "Responsable de la prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "PriseEncharge.personneImpliqueePriseEnCharge",
        "path" : "PriseEncharge.personneImpliqueePriseEnCharge",
        "short" : "Personne impliquée dans la prise en charge.",
        "definition" : "Personne impliquée dans la prise en charge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PriseEncharge.personneImpliqueePriseEnCharge.typeParticipation",
        "path" : "PriseEncharge.personneImpliqueePriseEnCharge.typeParticipation",
        "short" : "Type de participation.",
        "definition" : "Type de participation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation",
        "path" : "PriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation",
        "short" : "Date de début et de fin de la participation.",
        "definition" : "Date de début et de fin de la participation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "PriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique",
        "path" : "PriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique",
        "short" : "Professionnel impliqué.",
        "definition" : "Professionnel impliqué.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge",
        "path" : "PriseEncharge.lieuPriseEnCharge",
        "short" : "Lieu de la prise en charge.",
        "definition" : "Lieu de la prise en charge.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure",
        "short" : "Structure",
        "definition" : "Structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.identifiantStructure",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.identifiantStructure",
        "short" : "Identifiant de la structure",
        "definition" : "Identifiant de la structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.nomStructure",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.nomStructure",
        "short" : "Nom de la structure",
        "definition" : "Nom de la structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.adresse",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.adresse",
        "short" : "Adresse géopostale",
        "definition" : "Adresse géopostale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.coordonneesTelecom",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.coordonneesTelecom",
        "short" : "Coordonnées télécom",
        "definition" : "Coordonnées télécom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite",
        "short" : "Secteur d'activité",
        "definition" : "Secteur d'activité",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement",
        "short" : "Catégorie d'établissement",
        "definition" : "Catégorie d'établissement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PriseEncharge.lieuPriseEnCharge.structure.typeStructure",
        "path" : "PriseEncharge.lieuPriseEnCharge.structure.typeStructure",
        "short" : "Type de structure",
        "definition" : "Type de structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
