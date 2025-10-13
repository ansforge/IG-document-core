# Plan de soins - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan de soins**

## Logical Model: Plan de soins 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPlanSoins | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPlanSoins |

 
Section Plan de soins 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPlanSoins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPlanSoins.csv), [Excel](StructureDefinition-FrPlanSoins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPlanSoins",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPlanSoins",
  "version" : "0.1.0",
  "name" : "FrPlanSoins",
  "title" : "Plan de soins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPlanSoins",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPlanSoins",
        "path" : "FrPlanSoins",
        "short" : "Plan de soins",
        "definition" : "Section Plan de soins"
      },
      {
        "id" : "FrPlanSoins.titreSection",
        "path" : "FrPlanSoins.titreSection",
        "min" : 1
      },
      {
        "id" : "FrPlanSoins.sousSection",
        "path" : "FrPlanSoins.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrPlanSoins.entree.actes",
        "path" : "FrPlanSoins.entree.actes",
        "short" : "Entrée Acte",
        "definition" : "Entrée Acte",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe"
          }
        ]
      },
      {
        "id" : "FrPlanSoins.entree.demandeExamenOuSuivi",
        "path" : "FrPlanSoins.entree.demandeExamenOuSuivi",
        "short" : "Entrée Demande d'examen ou de suivi",
        "definition" : "Entrée Demande d'examen ou de suivi",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenOuSuivi"
          }
        ]
      },
      {
        "id" : "FrPlanSoins.entree.traitement",
        "path" : "FrPlanSoins.entree.traitement",
        "short" : "Entrée Traitement",
        "definition" : "Entrée Traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement"
          }
        ]
      },
      {
        "id" : "FrPlanSoins.entree.vaccinRecommande",
        "path" : "FrPlanSoins.entree.vaccinRecommande",
        "short" : "Entrée Vaccin recommandé",
        "definition" : "Entrée Vaccin recommandé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinRecommande"
          }
        ]
      },
      {
        "id" : "FrPlanSoins.entree.rencontre",
        "path" : "FrPlanSoins.entree.rencontre",
        "short" : "Entrée Rencontre",
        "definition" : "Entrée Rencontre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRencontre"
          }
        ]
      }
    ]
  }
}

```
