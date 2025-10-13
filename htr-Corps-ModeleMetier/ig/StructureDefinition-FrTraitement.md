# Traitement - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitement**

## Logical Model: Traitement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitement |

 
Entrée Traitement 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md), [Effet indesirable](StructureDefinition-FrEffetIndesirable.md), [Plan de soins](StructureDefinition-FrPlanSoins.md), [Traitement dispensé](StructureDefinition-FrTraitementDispense.md)...Show 3 more,[Traitements à la sortie](StructureDefinition-FrTraitementSortie.md),[Traitements](StructureDefinition-FrTraitements.md)and[Traitements administrés](StructureDefinition-FrTraitementsAdministres.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitement.csv), [Excel](StructureDefinition-FrTraitement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitement",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement",
  "version" : "0.1.0",
  "name" : "FrTraitement",
  "title" : "Traitement",
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
  "description" : "Entrée Traitement",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitement",
        "path" : "FrTraitement",
        "short" : "Traitement",
        "definition" : "Entrée Traitement"
      },
      {
        "id" : "FrTraitement.identifiant",
        "path" : "FrTraitement.identifiant",
        "short" : "Identifiant de l'entrée. L'entrée Traitement doit être identifiée de manière unique",
        "definition" : "Identifiant de l'entrée. L'entrée Traitement doit être identifiée de manière unique",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrTraitement.code",
        "path" : "FrTraitement.code",
        "short" : "Acte ou situation",
        "definition" : "Acte ou situation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitement.note",
        "path" : "FrTraitement.note",
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
        "id" : "FrTraitement.status",
        "path" : "FrTraitement.status",
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
        "id" : "FrTraitement.occurancePeriod",
        "path" : "FrTraitement.occurancePeriod",
        "short" : "Durée du traitement",
        "definition" : "Durée du traitement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTraitement.occuranceDateTim",
        "path" : "FrTraitement.occuranceDateTim",
        "short" : "Fréquence d'administration",
        "definition" : "Fréquence d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "FrTraitement.dosage",
        "path" : "FrTraitement.dosage",
        "short" : "Dosage",
        "definition" : "Dosage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ],
        "binding" : {
          "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
        }
      },
      {
        "id" : "FrTraitement.dosage.route",
        "path" : "FrTraitement.dosage.route",
        "short" : "Voie d'administration",
        "definition" : "Voie d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitement.dosage.site",
        "path" : "FrTraitement.dosage.site",
        "short" : "Région anatomique d'administration",
        "definition" : "Région anatomique d'administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitement.dosage.dose",
        "path" : "FrTraitement.dosage.dose",
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
        "id" : "FrTraitement.dosage.rate[x]",
        "path" : "FrTraitement.dosage.rate[x]",
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
        "id" : "FrTraitement.medicament",
        "path" : "FrTraitement.medicament",
        "short" : "Médicament",
        "definition" : "Médicament",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      },
      {
        "id" : "FrTraitement.reason",
        "path" : "FrTraitement.reason",
        "short" : "Motif du traitement",
        "definition" : "Motif du traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne"
          }
        ]
      },
      {
        "id" : "FrTraitement.prescription",
        "path" : "FrTraitement.prescription",
        "short" : "Prescription",
        "definition" : "Prescription",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionEntry"
          }
        ]
      },
      {
        "id" : "FrTraitement.subordinateTreatment",
        "path" : "FrTraitement.subordinateTreatment",
        "short" : "Traitement subordonné",
        "definition" : "Traitement subordonné",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementSubordonne"
          }
        ]
      },
      {
        "id" : "FrTraitement.instructionsPatient",
        "path" : "FrTraitement.instructionsPatient",
        "short" : "Instruction au patient",
        "definition" : "Instruction au patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsPatient"
          }
        ]
      },
      {
        "id" : "FrTraitement.precondition",
        "path" : "FrTraitement.precondition",
        "short" : "Précondition",
        "definition" : "Précondition",
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
