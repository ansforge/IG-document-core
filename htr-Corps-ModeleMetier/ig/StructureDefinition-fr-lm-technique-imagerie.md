# Modèle logique métier - FR LM Technique imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Technique imagerie**

## Logical Model: Modèle logique métier - FR LM Technique imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMTechniqueImagerie |

 
Entrée Technique imagerie 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Acte d'imagerie](StructureDefinition-fr-lm-acte-imagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-technique-imagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-technique-imagerie.csv), [Excel](StructureDefinition-fr-lm-technique-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-technique-imagerie",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMTechniqueImagerie",
  "title" : "Modèle logique métier - FR LM Technique imagerie",
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
  "description" : "Entrée Technique imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-technique-imagerie",
        "path" : "fr-lm-technique-imagerie",
        "short" : "Modèle logique métier - FR LM Technique imagerie",
        "definition" : "Entrée Technique imagerie"
      },
      {
        "id" : "fr-lm-technique-imagerie.identifiant",
        "path" : "fr-lm-technique-imagerie.identifiant",
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
        "id" : "fr-lm-technique-imagerie.codeActe",
        "path" : "fr-lm-technique-imagerie.codeActe",
        "short" : "Code de l'acte d'imagerie",
        "definition" : "Code de l'acte d'imagerie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-code-document-imagerie-cisis (1.2.250.1.213.1.1.5.687)"
        }
      },
      {
        "id" : "fr-lm-technique-imagerie.description",
        "path" : "fr-lm-technique-imagerie.description",
        "short" : "Partie narrative de l'observation",
        "definition" : "Partie narrative de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "fr-lm-technique-imagerie.date",
        "path" : "fr-lm-technique-imagerie.date",
        "short" : "\tDate de l'acte",
        "definition" : "\tDate de l'acte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-lm-technique-imagerie.modaliteAcquisition",
        "path" : "fr-lm-technique-imagerie.modaliteAcquisition",
        "short" : "Modalité d’acquisition",
        "definition" : "Modalité d’acquisition",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
        }
      },
      {
        "id" : "fr-lm-technique-imagerie.lateralite",
        "path" : "fr-lm-technique-imagerie.lateralite",
        "short" : "Latéralité et topographie",
        "definition" : "Latéralité et topographie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-localisation-anatomique-cisis (1.2.250.1.213.1.1.5.694)"
        }
      },
      {
        "id" : "fr-lm-technique-imagerie.lateralite.topographique",
        "path" : "fr-lm-technique-imagerie.lateralite.topographique",
        "short" : "Précision topographique",
        "definition" : "Précision topographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-technique-imagerie.lateralite.topographique.nom",
        "path" : "fr-lm-technique-imagerie.lateralite.topographique.nom",
        "short" : "name",
        "definition" : "name",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-technique-imagerie.lateralite.topographique.valeur",
        "path" : "fr-lm-technique-imagerie.lateralite.topographique.valeur",
        "short" : "Valeur de la topographie",
        "definition" : "Valeur de la topographie",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"
        }
      },
      {
        "id" : "fr-lm-technique-imagerie.participant",
        "path" : "fr-lm-technique-imagerie.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant-corps"
          }
        ]
      }
    ]
  }
}

```
