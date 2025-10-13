# Prescription - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prescription**

## Logical Model: Prescription 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionEntry | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPrescriptionEntry |

 
Entrée Prescription 

**Usages:**

* Use this Logical Model: [Traitement](StructureDefinition-FrTraitement.md), [Vaccin recommandé](StructureDefinition-FrVaccinRecommande.md) and [Vaccination](StructureDefinition-FrVaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPrescriptionEntry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPrescriptionEntry.csv), [Excel](StructureDefinition-FrPrescriptionEntry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPrescriptionEntry",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionEntry",
  "version" : "0.1.0",
  "name" : "FrPrescriptionEntry",
  "title" : "Prescription",
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
  "description" : "Entrée Prescription ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionEntry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPrescriptionEntry",
        "path" : "FrPrescriptionEntry",
        "short" : "Prescription",
        "definition" : "Entrée Prescription "
      },
      {
        "id" : "FrPrescriptionEntry.identifiantPrescription",
        "path" : "FrPrescriptionEntry.identifiantPrescription",
        "short" : "Identifiant de la prescription",
        "definition" : "Identifiant de la prescription",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrPrescriptionEntry.nombreRenouvellements",
        "path" : "FrPrescriptionEntry.nombreRenouvellements",
        "short" : "Nombre de renouvellements possibles",
        "definition" : "Nombre de renouvellements possibles",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "FrPrescriptionEntry.quantitePrescription",
        "path" : "FrPrescriptionEntry.quantitePrescription",
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
        "id" : "FrPrescriptionEntry.auteurPrescription",
        "path" : "FrPrescriptionEntry.auteurPrescription",
        "short" : "Prescripteur",
        "definition" : "Prescripteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrPrescriptionEntry.dispensateurPrescription",
        "path" : "FrPrescriptionEntry.dispensateurPrescription",
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
        "id" : "FrPrescriptionEntry.instructionsAuDispensateur",
        "path" : "FrPrescriptionEntry.instructionsAuDispensateur",
        "short" : "Instructions au dispensateur",
        "definition" : "Instructions au dispensateur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsAuDispensateur"
          }
        ]
      }
    ]
  }
}

```
