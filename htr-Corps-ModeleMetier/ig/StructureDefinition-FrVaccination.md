# Vaccination - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccination**

## Logical Model: Vaccination 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccination | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrVaccination |

 
Entrée Vaccination 

**Usages:**

* Use this Logical Model: [Vaccinations](StructureDefinition-FrVaccinations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrVaccination)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrVaccination.csv), [Excel](StructureDefinition-FrVaccination.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrVaccination",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccination",
  "version" : "0.1.0",
  "name" : "FrVaccination",
  "title" : "Vaccination",
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
  "description" : "Entrée Vaccination",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccination",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrVaccination",
        "path" : "FrVaccination",
        "short" : "Vaccination",
        "definition" : "Entrée Vaccination"
      },
      {
        "id" : "FrVaccination.identifiant",
        "path" : "FrVaccination.identifiant",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrVaccination.code",
        "path" : "FrVaccination.code",
        "short" : "Type d'acte : vaccination",
        "definition" : "Type d'acte : vaccination",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrVaccination.description",
        "path" : "FrVaccination.description",
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
        "id" : "FrVaccination.statut",
        "path" : "FrVaccination.statut",
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
        "id" : "FrVaccination.dateVaccination",
        "path" : "FrVaccination.dateVaccination",
        "short" : "Période de vaccination souhaitable",
        "definition" : "Période de vaccination souhaitable",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrVaccination.voieAadministration",
        "path" : "FrVaccination.voieAadministration",
        "short" : "Voie d’administration",
        "definition" : "Voie d’administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrVaccination.regionAnatomique",
        "path" : "FrVaccination.regionAnatomique",
        "short" : "Région anatomique d'administration",
        "definition" : "Région anatomique d'administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
        }
      },
      {
        "id" : "FrVaccination.doseVaccination",
        "path" : "FrVaccination.doseVaccination",
        "short" : "Dose administrée",
        "definition" : "Dose administrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrVaccination.vaccin",
        "path" : "FrVaccination.vaccin",
        "short" : "Vaccin",
        "definition" : "Vaccin",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      },
      {
        "id" : "FrVaccination.prescription",
        "path" : "FrVaccination.prescription",
        "short" : "Référence de la prescription",
        "definition" : "Référence de la prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionEntry"
          }
        ]
      },
      {
        "id" : "FrVaccination.rangVaccination",
        "path" : "FrVaccination.rangVaccination",
        "short" : "Rang de la vaccination",
        "definition" : "Rang de la vaccination",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRangVaccination"
          }
        ]
      },
      {
        "id" : "FrVaccination.reaction",
        "path" : "FrVaccination.reaction",
        "short" : "Réaction observée suite au vaccin",
        "definition" : "Réaction observée suite au vaccin",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      },
      {
        "id" : "FrVaccination.commentaire",
        "path" : "FrVaccination.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      },
      {
        "id" : "FrVaccination.DoseAntigene",
        "path" : "FrVaccination.DoseAntigene",
        "short" : "Dose d'antigène",
        "definition" : "Dose d'antigène",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDoseAntigene"
          }
        ]
      }
    ]
  }
}

```
