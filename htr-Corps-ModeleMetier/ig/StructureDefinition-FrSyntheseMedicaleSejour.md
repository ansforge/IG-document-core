# Synthese medicale sejour - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Synthese medicale sejour**

## Logical Model: Synthese medicale sejour 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSyntheseMedicaleSejour | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrSyntheseMedicaleSejour |

 
Entrée Synthese medicale sejour 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrSyntheseMedicaleSejour)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSyntheseMedicaleSejour.csv), [Excel](StructureDefinition-FrSyntheseMedicaleSejour.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSyntheseMedicaleSejour",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSyntheseMedicaleSejour",
  "version" : "0.1.0",
  "name" : "FrSyntheseMedicaleSejour",
  "title" : "Synthese medicale sejour",
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
  "description" : "Entrée Synthese medicale sejour",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSyntheseMedicaleSejour",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrSyntheseMedicaleSejour",
        "path" : "FrSyntheseMedicaleSejour",
        "short" : "Synthese medicale sejour",
        "definition" : "Entrée Synthese medicale sejour"
      },
      {
        "id" : "FrSyntheseMedicaleSejour.identifiant",
        "path" : "FrSyntheseMedicaleSejour.identifiant",
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
        "id" : "FrSyntheseMedicaleSejour.code",
        "path" : "FrSyntheseMedicaleSejour.code",
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
        "id" : "FrSyntheseMedicaleSejour.description",
        "path" : "FrSyntheseMedicaleSejour.description",
        "short" : "Description narrative de l'entrée",
        "definition" : "Description narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrSyntheseMedicaleSejour.statut",
        "path" : "FrSyntheseMedicaleSejour.statut",
        "short" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "definition" : "Statut de l'entrée. Fixé à la valeur 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrSyntheseMedicaleSejour.date",
        "path" : "FrSyntheseMedicaleSejour.date",
        "short" : "Date de la synthèse médicale du séjour",
        "definition" : "Date de la synthèse médicale du séjour",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrSyntheseMedicaleSejour.statutDocument",
        "path" : "FrSyntheseMedicaleSejour.statutDocument",
        "short" : "Synthèse médicale du séjour (sous forme textuelle)",
        "definition" : "Synthèse médicale du séjour (sous forme textuelle)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrSyntheseMedicaleSejour.auteur",
        "path" : "FrSyntheseMedicaleSejour.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
