# Evènements indésirables pendant l'hospitalisation - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evènements indésirables pendant l'hospitalisation**

## Logical Model: Evènements indésirables pendant l'hospitalisation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementIndesirablePendantHospitalisation | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvenementIndesirablePendantHospitalisation |

 
Entrée Evènements indésirables pendant l’hospitalisation 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvenementIndesirablePendantHospitalisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvenementIndesirablePendantHospitalisation.csv), [Excel](StructureDefinition-FrEvenementIndesirablePendantHospitalisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvenementIndesirablePendantHospitalisation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementIndesirablePendantHospitalisation",
  "version" : "0.1.0",
  "name" : "FrEvenementIndesirablePendantHospitalisation",
  "title" : "Evènements indésirables pendant l'hospitalisation",
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
  "description" : "Entrée Evènements indésirables pendant l'hospitalisation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvenementIndesirablePendantHospitalisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation",
        "path" : "FrEvenementIndesirablePendantHospitalisation",
        "short" : "Evènements indésirables pendant l'hospitalisation",
        "definition" : "Entrée Evènements indésirables pendant l'hospitalisation"
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.identifiant",
        "path" : "FrEvenementIndesirablePendantHospitalisation.identifiant",
        "short" : "Identifiant de l’observation",
        "definition" : "Identifiant de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.code",
        "path" : "FrEvenementIndesirablePendantHospitalisation.code",
        "short" : "Code de l’observation",
        "definition" : "Code de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.description",
        "path" : "FrEvenementIndesirablePendantHospitalisation.description",
        "short" : "Description narrative de l’observation",
        "definition" : "Description narrative de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.statut",
        "path" : "FrEvenementIndesirablePendantHospitalisation.statut",
        "short" : "Statut de l’observation. Fixé à 'completed'",
        "definition" : "Statut de l’observation. Fixé à 'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.date",
        "path" : "FrEvenementIndesirablePendantHospitalisation.date",
        "short" : "Date de l’observation",
        "definition" : "Date de l’observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.valeur",
        "path" : "FrEvenementIndesirablePendantHospitalisation.valeur",
        "short" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation.",
        "definition" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrEvenementIndesirablePendantHospitalisation.auteur",
        "path" : "FrEvenementIndesirablePendantHospitalisation.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "1",
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
