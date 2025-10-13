# Demande d'examen ou de suivi / Objectif à atteindre - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demande d'examen ou de suivi / Objectif à atteindre**

## Logical Model: Demande d'examen ou de suivi / Objectif à atteindre 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenOuSuivi | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDemandeExamenOuSuivi |

 
Entrée Demande d’examen ou de suivi / Objectif à atteindre 

**Usages:**

* Use this Logical Model: [Plan de soins](StructureDefinition-FrPlanSoins.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDemandeExamenOuSuivi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDemandeExamenOuSuivi.csv), [Excel](StructureDefinition-FrDemandeExamenOuSuivi.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDemandeExamenOuSuivi",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenOuSuivi",
  "version" : "0.1.0",
  "name" : "FrDemandeExamenOuSuivi",
  "title" : "Demande d'examen ou de suivi / Objectif à atteindre",
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
  "description" : "Entrée Demande d'examen ou de suivi / Objectif à atteindre",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenOuSuivi",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDemandeExamenOuSuivi",
        "path" : "FrDemandeExamenOuSuivi",
        "short" : "Demande d'examen ou de suivi / Objectif à atteindre",
        "definition" : "Entrée Demande d'examen ou de suivi / Objectif à atteindre"
      },
      {
        "id" : "FrDemandeExamenOuSuivi.identifiant",
        "path" : "FrDemandeExamenOuSuivi.identifiant",
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
        "id" : "FrDemandeExamenOuSuivi.typeDemande",
        "path" : "FrDemandeExamenOuSuivi.typeDemande",
        "short" : "Type de la demande",
        "definition" : "Type de la demande",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.description",
        "path" : "FrDemandeExamenOuSuivi.description",
        "short" : "Description narrative de l'entrée",
        "definition" : "Description narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.statutDemande",
        "path" : "FrDemandeExamenOuSuivi.statutDemande",
        "short" : "Statut de la demande",
        "definition" : "Statut de la demande",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.date",
        "path" : "FrDemandeExamenOuSuivi.date",
        "short" : "Date prévisionnelle de l'examen, du suivi, de l'objectif",
        "definition" : "Date prévisionnelle de l'examen, du suivi, de l'objectif",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.resultat",
        "path" : "FrDemandeExamenOuSuivi.resultat",
        "short" : "Résultat de la demande",
        "definition" : "Résultat de la demande",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.interpretation",
        "path" : "FrDemandeExamenOuSuivi.interpretation",
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
        "id" : "FrDemandeExamenOuSuivi.methode",
        "path" : "FrDemandeExamenOuSuivi.methode",
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
        "id" : "FrDemandeExamenOuSuivi.cible",
        "path" : "FrDemandeExamenOuSuivi.cible",
        "short" : "Cible",
        "definition" : "Cible",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrDemandeExamenOuSuivi.auteur",
        "path" : "FrDemandeExamenOuSuivi.auteur",
        "short" : "Auteur de la demande",
        "definition" : "Auteur de la demande",
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
