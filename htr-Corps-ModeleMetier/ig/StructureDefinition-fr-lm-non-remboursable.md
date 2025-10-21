# Non remboursable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Non remboursable**

## Logical Model: Non remboursable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-non-remboursable | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMNonRemboursable |

 
Modèle logique métier - FR LM Entrée Non remboursable 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement Prescrit](StructureDefinition-fr-lm-traitement-prescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-non-remboursable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-non-remboursable.csv), [Excel](StructureDefinition-fr-lm-non-remboursable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-non-remboursable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-non-remboursable",
  "version" : "0.1.0",
  "name" : "FRLMNonRemboursable",
  "title" : "Non remboursable",
  "status" : "draft",
  "date" : "2025-10-21T08:19:27+00:00",
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
  "description" : "Modèle logique métier - FR LM Entrée Non remboursable",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-non-remboursable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-non-remboursable",
        "path" : "fr-lm-non-remboursable",
        "short" : "Non remboursable",
        "definition" : "Modèle logique métier - FR LM Entrée Non remboursable"
      },
      {
        "id" : "fr-lm-non-remboursable.identifiant",
        "path" : "fr-lm-non-remboursable.identifiant",
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
        "id" : "fr-lm-non-remboursable.code",
        "path" : "fr-lm-non-remboursable.code",
        "short" : "Type de l'entrée",
        "definition" : "Type de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-non-remboursable.description",
        "path" : "fr-lm-non-remboursable.description",
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
        "id" : "fr-lm-non-remboursable.statut",
        "path" : "fr-lm-non-remboursable.statut",
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
        "id" : "fr-lm-non-remboursable.horodatage",
        "path" : "fr-lm-non-remboursable.horodatage",
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
        "id" : "fr-lm-non-remboursable.resultat",
        "path" : "fr-lm-non-remboursable.resultat",
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
        "id" : "fr-lm-non-remboursable.auteur",
        "path" : "fr-lm-non-remboursable.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur"
          }
        ]
      }
    ]
  }
}

```
