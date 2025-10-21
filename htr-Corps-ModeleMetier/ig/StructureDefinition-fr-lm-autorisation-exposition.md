# Modèle logique métier - FR LM Autorisation exposition - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Autorisation exposition**

## Logical Model: Modèle logique métier - FR LM Autorisation exposition 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-exposition | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMAutorisationExposition |

 
Entrée Autorisation exposition 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Exposition aux radiations](StructureDefinition-fr-lm-exposition-radiations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-autorisation-exposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-autorisation-exposition.csv), [Excel](StructureDefinition-fr-lm-autorisation-exposition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-autorisation-exposition",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-exposition",
  "version" : "0.1.0",
  "name" : "FRLMAutorisationExposition",
  "title" : "Modèle logique métier - FR LM Autorisation exposition",
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
  "description" : "Entrée Autorisation exposition",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-exposition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-autorisation-exposition",
        "path" : "fr-lm-autorisation-exposition",
        "short" : "Modèle logique métier - FR LM Autorisation exposition",
        "definition" : "Entrée Autorisation exposition"
      },
      {
        "id" : "fr-lm-autorisation-exposition.code",
        "path" : "fr-lm-autorisation-exposition.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-autorisation-exposition.participant",
        "path" : "fr-lm-autorisation-exposition.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 1,
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
