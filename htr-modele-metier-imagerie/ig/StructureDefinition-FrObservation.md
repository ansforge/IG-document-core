# Entrée Observation - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entrée Observation**

## Logical Model: Entrée Observation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrObservation |

 
Entrée observation 

**Usages:**

* Use this Logical Model: [Acte](StructureDefinition-FrActe.md), [Documents ajoutés](StructureDefinition-FrDocumentsAjoutes.md), [Education du patient](StructureDefinition-FrEducationPatient.md) and [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrObservation.csv), [Excel](StructureDefinition-FrObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrObservation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation",
  "version" : "0.1.0",
  "name" : "FrObservation",
  "title" : "Entrée Observation",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Entrée observation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrObservation",
        "path" : "FrObservation",
        "short" : "Entrée Observation",
        "definition" : "Entrée observation"
      },
      {
        "id" : "FrObservation.observationIdentifiant",
        "path" : "FrObservation.observationIdentifiant",
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
        "id" : "FrObservation.observationCode",
        "path" : "FrObservation.observationCode",
        "short" : "Code de l'observation",
        "definition" : "Code de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrObservation.observationDescription",
        "path" : "FrObservation.observationDescription",
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
        "id" : "FrObservation.observationStatut",
        "path" : "FrObservation.observationStatut",
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
        "id" : "FrObservation.observationDate",
        "path" : "FrObservation.observationDate",
        "short" : "Date de l'observation",
        "definition" : "Date de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrObservation.observationNombreRenouvellements",
        "path" : "FrObservation.observationNombreRenouvellements",
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
        "id" : "FrObservation.observationResultat",
        "path" : "FrObservation.observationResultat",
        "short" : "Valeur de l'observation",
        "definition" : "Valeur de l'observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrObservation.observationInterpretation",
        "path" : "FrObservation.observationInterpretation",
        "short" : "Interprétation",
        "definition" : "Interprétation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrObservation.observationMethode",
        "path" : "FrObservation.observationMethode",
        "short" : "Méthode",
        "definition" : "Méthode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrObservation.observationLocalisationAnatomique",
        "path" : "FrObservation.observationLocalisationAnatomique",
        "short" : "Localisation anatomique",
        "definition" : "Localisation anatomique",
        "min" : 0,
        "max" : "1",
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
        "id" : "FrObservation.observationAuteur",
        "path" : "FrObservation.observationAuteur",
        "short" : "Auteur de l'observation",
        "definition" : "Auteur de l'observation",
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
