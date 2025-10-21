# Modèle logique métier - FR LM Plan de soins - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Plan de soins**

## Logical Model: Modèle logique métier - FR LM Plan de soins 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMPlanSoins |

 
Section Plan de soins 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-plan-soins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-plan-soins.csv), [Excel](StructureDefinition-fr-lm-plan-soins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-plan-soins",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins",
  "version" : "0.1.0",
  "name" : "FRLMPlanSoins",
  "title" : "Modèle logique métier - FR LM Plan de soins",
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
  "description" : "Section Plan de soins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-plan-soins",
        "path" : "fr-lm-plan-soins",
        "short" : "Modèle logique métier - FR LM Plan de soins",
        "definition" : "Section Plan de soins"
      },
      {
        "id" : "fr-lm-plan-soins.titreSection",
        "path" : "fr-lm-plan-soins.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-plan-soins.sousSection",
        "path" : "fr-lm-plan-soins.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-plan-soins.entree.actes",
        "path" : "fr-lm-plan-soins.entree.actes",
        "short" : "Entrée Acte",
        "definition" : "Entrée Acte",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte"
          }
        ]
      },
      {
        "id" : "fr-lm-plan-soins.entree.demandeExamenOuSuivi",
        "path" : "fr-lm-plan-soins.entree.demandeExamenOuSuivi",
        "short" : "Entrée Demande d'examen ou de suivi",
        "definition" : "Entrée Demande d'examen ou de suivi",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-ou-suivi"
          }
        ]
      },
      {
        "id" : "fr-lm-plan-soins.entree.traitement",
        "path" : "fr-lm-plan-soins.entree.traitement",
        "short" : "Entrée Traitement",
        "definition" : "Entrée Traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
          }
        ]
      },
      {
        "id" : "fr-lm-plan-soins.entree.vaccinRecommande",
        "path" : "fr-lm-plan-soins.entree.vaccinRecommande",
        "short" : "Entrée Vaccin recommandé",
        "definition" : "Entrée Vaccin recommandé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccin-recommande"
          }
        ]
      },
      {
        "id" : "fr-lm-plan-soins.entree.rencontre",
        "path" : "fr-lm-plan-soins.entree.rencontre",
        "short" : "Entrée Rencontre",
        "definition" : "Entrée Rencontre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-rencontre"
          }
        ]
      }
    ]
  }
}

```
