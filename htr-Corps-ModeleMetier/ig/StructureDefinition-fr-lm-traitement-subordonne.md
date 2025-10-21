# Modèle logique métier - FR LM Traitement subordonné - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Traitement subordonné**

## Logical Model: Modèle logique métier - FR LM Traitement subordonné 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-subordonne | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMTraitementSubordonne |

 
Entrée Traitement subordonné 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement](StructureDefinition-fr-lm-traitement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-traitement-subordonne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-traitement-subordonne.csv), [Excel](StructureDefinition-fr-lm-traitement-subordonne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-traitement-subordonne",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-subordonne",
  "version" : "0.1.0",
  "name" : "FRLMTraitementSubordonne",
  "title" : "Modèle logique métier - FR LM Traitement subordonné",
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
  "description" : "Entrée Traitement subordonné ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-subordonne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-traitement-subordonne",
        "path" : "fr-lm-traitement-subordonne",
        "short" : "Modèle logique métier - FR LM Traitement subordonné",
        "definition" : "Entrée Traitement subordonné "
      },
      {
        "id" : "fr-lm-traitement-subordonne.identifiantTraitement",
        "path" : "fr-lm-traitement-subordonne.identifiantTraitement",
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
        "id" : "fr-lm-traitement-subordonne.descriptionTraitement",
        "path" : "fr-lm-traitement-subordonne.descriptionTraitement",
        "short" : "Partie narrative de l’entrée",
        "definition" : "Partie narrative de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "fr-lm-traitement-subordonne.statutTraitement",
        "path" : "fr-lm-traitement-subordonne.statutTraitement",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-lm-traitement-subordonne.doseAadministrer",
        "path" : "fr-lm-traitement-subordonne.doseAadministrer",
        "short" : "Dose à administrer",
        "definition" : "Dose à administrer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "fr-lm-traitement-subordonne.rythmeAdministration",
        "path" : "fr-lm-traitement-subordonne.rythmeAdministration",
        "short" : "Rythme d'administration",
        "definition" : "Rythme d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "fr-lm-traitement-subordonne.medicamentTraitement",
        "path" : "fr-lm-traitement-subordonne.medicamentTraitement",
        "short" : "Médicament",
        "definition" : "Médicament",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-produit-sante"
          }
        ]
      },
      {
        "id" : "fr-lm-traitement-subordonne.preconditionTraitement",
        "path" : "fr-lm-traitement-subordonne.preconditionTraitement",
        "short" : "Précondition",
        "definition" : "Précondition",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      }
    ]
  }
}

```
