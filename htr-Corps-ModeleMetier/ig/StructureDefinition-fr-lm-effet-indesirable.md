# Modèle logique métier - FR LM Effet indesirable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Effet indesirable**

## Logical Model: Modèle logique métier - FR LM Effet indesirable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMEffetIndesirable |

 
Entrée Effet indesirable 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Effets indesirables](StructureDefinition-fr-lm-effets-indesirables.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-effet-indesirable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-effet-indesirable.csv), [Excel](StructureDefinition-fr-lm-effet-indesirable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-effet-indesirable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable",
  "version" : "0.1.0",
  "name" : "FRLMEffetIndesirable",
  "title" : "Modèle logique métier - FR LM Effet indesirable",
  "status" : "draft",
  "date" : "2025-10-21T12:36:21+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-effet-indesirable",
        "path" : "fr-lm-effet-indesirable",
        "short" : "Modèle logique métier - FR LM Effet indesirable",
        "definition" : "Entrée Effet indesirable"
      },
      {
        "id" : "fr-lm-effet-indesirable.identifiant",
        "path" : "fr-lm-effet-indesirable.identifiant",
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
        "id" : "fr-lm-effet-indesirable.typeEffetIndesirable",
        "path" : "fr-lm-effet-indesirable.typeEffetIndesirable",
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
        "id" : "fr-lm-effet-indesirable.description",
        "path" : "fr-lm-effet-indesirable.description",
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
        "id" : "fr-lm-effet-indesirable.statut",
        "path" : "fr-lm-effet-indesirable.statut",
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
        "id" : "fr-lm-effet-indesirable.dateDebutFin",
        "path" : "fr-lm-effet-indesirable.dateDebutFin",
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
        "id" : "fr-lm-effet-indesirable.valeur",
        "path" : "fr-lm-effet-indesirable.valeur",
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
        "id" : "fr-lm-effet-indesirable.traitement",
        "path" : "fr-lm-effet-indesirable.traitement",
        "short" : "Médicament, substance incriminée, posologie",
        "definition" : "Médicament, substance incriminée, posologie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
          }
        ]
      },
      {
        "id" : "fr-lm-effet-indesirable.probleme",
        "path" : "fr-lm-effet-indesirable.probleme",
        "short" : "Réaction observée",
        "definition" : "Réaction observée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-probleme"
          }
        ]
      },
      {
        "id" : "fr-lm-effet-indesirable.imputabiliteEffetIndesirable",
        "path" : "fr-lm-effet-indesirable.imputabiliteEffetIndesirable",
        "short" : "Imputabilité",
        "definition" : "Imputabilité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-imputabilite-effet-indesirable"
          }
        ]
      },
      {
        "id" : "fr-lm-effet-indesirable.graviteEffetIndesirable",
        "path" : "fr-lm-effet-indesirable.graviteEffetIndesirable",
        "short" : "Gravité",
        "definition" : "Gravité",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-gravite-effet-indesirable"
          }
        ]
      },
      {
        "id" : "fr-lm-effet-indesirable.evolutionEffetIndesirable",
        "path" : "fr-lm-effet-indesirable.evolutionEffetIndesirable",
        "short" : "Evolution",
        "definition" : "Evolution",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evolution-effet-indesirable"
          }
        ]
      }
    ]
  }
}

```
