# Vaccin recommandé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccin recommandé**

## Logical Model: Vaccin recommandé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinRecommande | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrVaccinRecommande |

 
Entrée Vaccin recommandé 

**Usages:**

* Use this Logical Model: [Plan de soins](StructureDefinition-FrPlanSoins.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrVaccinRecommande)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrVaccinRecommande.csv), [Excel](StructureDefinition-FrVaccinRecommande.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrVaccinRecommande",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinRecommande",
  "version" : "0.1.0",
  "name" : "FrVaccinRecommande",
  "title" : "Vaccin recommandé",
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
  "description" : "Entrée Vaccin recommandé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinRecommande",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrVaccinRecommande",
        "path" : "FrVaccinRecommande",
        "short" : "Vaccin recommandé",
        "definition" : "Entrée Vaccin recommandé"
      },
      {
        "id" : "FrVaccinRecommande.identifiantVaccinRecommande",
        "path" : "FrVaccinRecommande.identifiantVaccinRecommande",
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
        "id" : "FrVaccinRecommande.codeVaccinRecommande",
        "path" : "FrVaccinRecommande.codeVaccinRecommande",
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
        "id" : "FrVaccinRecommande.descriptionNarrativeVaccinRecommande",
        "path" : "FrVaccinRecommande.descriptionNarrativeVaccinRecommande",
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
        "id" : "FrVaccinRecommande.statutVaccinRecommande",
        "path" : "FrVaccinRecommande.statutVaccinRecommande",
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
        "id" : "FrVaccinRecommande.periodeVaccination",
        "path" : "FrVaccinRecommande.periodeVaccination",
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
        "id" : "FrVaccinRecommande.voieAdministration",
        "path" : "FrVaccinRecommande.voieAdministration",
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
        "id" : "FrVaccinRecommande.regionAnatomique",
        "path" : "FrVaccinRecommande.regionAnatomique",
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
        "id" : "FrVaccinRecommande.doseAdministree",
        "path" : "FrVaccinRecommande.doseAdministree",
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
        "id" : "FrVaccinRecommande.vaccin",
        "path" : "FrVaccinRecommande.vaccin",
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
        "id" : "FrVaccinRecommande.prescription",
        "path" : "FrVaccinRecommande.prescription",
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
        "id" : "FrVaccinRecommande.rangVaccination",
        "path" : "FrVaccinRecommande.rangVaccination",
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
        "id" : "FrVaccinRecommande.commentaire",
        "path" : "FrVaccinRecommande.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      }
    ]
  }
}

```
