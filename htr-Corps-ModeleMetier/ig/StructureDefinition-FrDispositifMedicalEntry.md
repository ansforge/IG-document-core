# Dispositif médical - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dispositif médical**

## Logical Model: Dispositif médical 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDispositifMedicalEntry |

 
Entrée Dispositif médical 

**Usages:**

* Use this Logical Model: [Acte](StructureDefinition-FrActe.md), [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md) and [Prescription de dispositifs médicaux](StructureDefinition-FrPrescriptionDispositifsMedicaux.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDispositifMedicalEntry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDispositifMedicalEntry.csv), [Excel](StructureDefinition-FrDispositifMedicalEntry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDispositifMedicalEntry",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry",
  "version" : "0.1.0",
  "name" : "FrDispositifMedicalEntry",
  "title" : "Dispositif médical",
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
  "description" : "Entrée Dispositif médical",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDispositifMedicalEntry",
        "path" : "FrDispositifMedicalEntry",
        "short" : "Dispositif médical",
        "definition" : "Entrée Dispositif médical"
      },
      {
        "id" : "FrDispositifMedicalEntry.identifiant",
        "path" : "FrDispositifMedicalEntry.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.description",
        "path" : "FrDispositifMedicalEntry.description",
        "short" : "Partie narrative de l'observation",
        "definition" : "Partie narrative de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.statut",
        "path" : "FrDispositifMedicalEntry.statut",
        "short" : "Statut de l'observation",
        "definition" : "Statut de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.date",
        "path" : "FrDispositifMedicalEntry.date",
        "short" : "Date d'utilisation ou de présence chez le patient",
        "definition" : "Date d'utilisation ou de présence chez le patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.renouvellement",
        "path" : "FrDispositifMedicalEntry.renouvellement",
        "short" : "Nombre de renouvellement(s) possible(s)",
        "definition" : "Nombre de renouvellement(s) possible(s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.quantite",
        "path" : "FrDispositifMedicalEntry.quantite",
        "short" : "Quantité",
        "definition" : "Quantité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.duree",
        "path" : "FrDispositifMedicalEntry.duree",
        "short" : "Durée d'utilisation",
        "definition" : "Durée d'utilisation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.performer",
        "path" : "FrDispositifMedicalEntry.performer",
        "short" : "Dispensateur",
        "definition" : "Dispensateur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.auteur",
        "path" : "FrDispositifMedicalEntry.auteur",
        "short" : "Prescripteur",
        "definition" : "Prescripteur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.dispositifMedical",
        "path" : "FrDispositifMedicalEntry.dispositifMedical",
        "short" : "Dispositif médical",
        "definition" : "Dispositif médical",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.affectionLongueDuree",
        "path" : "FrDispositifMedicalEntry.affectionLongueDuree",
        "short" : "Entrée En rapport avec une Affection Longue Durée (ALD)",
        "definition" : "Entrée En rapport avec une Affection Longue Durée (ALD)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.accidentTravail",
        "path" : "FrDispositifMedicalEntry.accidentTravail",
        "short" : "Entrée En rapport avec accident travail",
        "definition" : "Entrée En rapport avec accident travail",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.prevention",
        "path" : "FrDispositifMedicalEntry.prevention",
        "short" : "Entrée En rapport avec la prevention",
        "definition" : "Entrée En rapport avec la prevention",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrDispositifMedicalEntry.nonRemboursable",
        "path" : "FrDispositifMedicalEntry.nonRemboursable",
        "short" : "Entrée Non remboursable",
        "definition" : "Entrée Non remboursable",
        "min" : 0,
        "max" : "1",
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
