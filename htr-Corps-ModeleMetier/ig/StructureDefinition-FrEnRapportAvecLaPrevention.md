# En rapport avec la prevention - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **En rapport avec la prevention**

## Logical Model: En rapport avec la prevention 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecLaPrevention | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEnRapportAvecLaPrevention |

 
Entrée En rapport avec la prevention 

**Usages:**

* Use this Logical Model: [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEnRapportAvecLaPrevention)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEnRapportAvecLaPrevention.csv), [Excel](StructureDefinition-FrEnRapportAvecLaPrevention.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEnRapportAvecLaPrevention",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecLaPrevention",
  "version" : "0.1.0",
  "name" : "FrEnRapportAvecLaPrevention",
  "title" : "En rapport avec la prevention",
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
  "description" : "Entrée En rapport avec la prevention",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecLaPrevention",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEnRapportAvecLaPrevention",
        "path" : "FrEnRapportAvecLaPrevention",
        "short" : "En rapport avec la prevention",
        "definition" : "Entrée En rapport avec la prevention"
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.identifiant",
        "path" : "FrEnRapportAvecLaPrevention.identifiant",
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
        "id" : "FrEnRapportAvecLaPrevention.code",
        "path" : "FrEnRapportAvecLaPrevention.code",
        "short" : "Catégorie de l'entrée",
        "definition" : "Catégorie de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.description",
        "path" : "FrEnRapportAvecLaPrevention.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.statut",
        "path" : "FrEnRapportAvecLaPrevention.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.horodatage",
        "path" : "FrEnRapportAvecLaPrevention.horodatage",
        "short" : "Horodatage de l'entrée",
        "definition" : "Horodatage de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.resultat",
        "path" : "FrEnRapportAvecLaPrevention.resultat",
        "short" : "Résultat de l'observation",
        "definition" : "Résultat de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEnRapportAvecLaPrevention.auteur",
        "path" : "FrEnRapportAvecLaPrevention.auteur",
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
