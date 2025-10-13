# Observation sur la grossesse - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation sur la grossesse**

## Logical Model: Observation sur la grossesse 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrObservationGrossesse |

 
Entrée Observation sur la grossesse 

**Usages:**

* Use this Logical Model: [Antécédents obstétricaux](StructureDefinition-FrHistoriqueDesGrossesses.md), [Historique de la grossesse](StructureDefinition-FrHistoriqueGrossesse.md), [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md) and [Naissance](StructureDefinition-FrNaissance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrObservationGrossesse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrObservationGrossesse.csv), [Excel](StructureDefinition-FrObservationGrossesse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrObservationGrossesse",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse",
  "version" : "0.1.0",
  "name" : "FrObservationGrossesse",
  "title" : "Observation sur la grossesse",
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
  "description" : "Entrée Observation sur la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrObservationGrossesse",
        "path" : "FrObservationGrossesse",
        "short" : "Observation sur la grossesse",
        "definition" : "Entrée Observation sur la grossesse"
      },
      {
        "id" : "FrObservationGrossesse.identifiant",
        "path" : "FrObservationGrossesse.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrObservationGrossesse.code",
        "path" : "FrObservationGrossesse.code",
        "short" : "Type d'observation",
        "definition" : "Type d'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrObservationGrossesse.description",
        "path" : "FrObservationGrossesse.description",
        "short" : "Description narrative de l'observation",
        "definition" : "Description narrative de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrObservationGrossesse.statut",
        "path" : "FrObservationGrossesse.statut",
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
        "id" : "FrObservationGrossesse.date",
        "path" : "FrObservationGrossesse.date",
        "short" : "Date de l'observation",
        "definition" : "Date de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrObservationGrossesse.resultat",
        "path" : "FrObservationGrossesse.resultat",
        "short" : "Résultat de l’observation effectuée",
        "definition" : "Résultat de l’observation effectuée",
        "min" : 1,
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
