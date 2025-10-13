# Effet indesirable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Effet indesirable**

## Logical Model: Effet indesirable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetIndesirable | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEffetIndesirable |

 
Entrée Effet indesirable 

**Usages:**

* Use this Logical Model: [Effets indesirables](StructureDefinition-FrEffetsIndesirables.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEffetIndesirable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEffetIndesirable.csv), [Excel](StructureDefinition-FrEffetIndesirable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEffetIndesirable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetIndesirable",
  "version" : "0.1.0",
  "name" : "FrEffetIndesirable",
  "title" : "Effet indesirable",
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
  "description" : "Entrée Effet indesirable",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetIndesirable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEffetIndesirable",
        "path" : "FrEffetIndesirable",
        "short" : "Effet indesirable",
        "definition" : "Entrée Effet indesirable"
      },
      {
        "id" : "FrEffetIndesirable.identifiant",
        "path" : "FrEffetIndesirable.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.typeEffetIndesirable",
        "path" : "FrEffetIndesirable.typeEffetIndesirable",
        "short" : "Code de l'entrée. Type d'effet indésirable",
        "definition" : "Code de l'entrée. Type d'effet indésirable",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.description",
        "path" : "FrEffetIndesirable.description",
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
        "id" : "FrEffetIndesirable.statut",
        "path" : "FrEffetIndesirable.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.dateDebutFin",
        "path" : "FrEffetIndesirable.dateDebutFin",
        "short" : "Date de début et de fin de l'effet indésirable",
        "definition" : "Date de début et de fin de l'effet indésirable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.valeur",
        "path" : "FrEffetIndesirable.valeur",
        "short" : "Valeur de l'observation",
        "definition" : "Valeur de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.traitement",
        "path" : "FrEffetIndesirable.traitement",
        "short" : "Médicament, substance incriminée, posologie",
        "definition" : "Médicament, substance incriminée, posologie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.probleme",
        "path" : "FrEffetIndesirable.probleme",
        "short" : "Réaction observée",
        "definition" : "Réaction observée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.imputabiliteEffetIndesirable",
        "path" : "FrEffetIndesirable.imputabiliteEffetIndesirable",
        "short" : "Imputabilité",
        "definition" : "Imputabilité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImputabiliteEffetIndesirable"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.graviteEffetIndesirable",
        "path" : "FrEffetIndesirable.graviteEffetIndesirable",
        "short" : "Gravité",
        "definition" : "Gravité",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGraviteEffetIndesirable"
          }
        ]
      },
      {
        "id" : "FrEffetIndesirable.evolutionEffetIndesirable",
        "path" : "FrEffetIndesirable.evolutionEffetIndesirable",
        "short" : "Evolution",
        "definition" : "Evolution",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvolutionEffetIndesirable"
          }
        ]
      }
    ]
  }
}

```
