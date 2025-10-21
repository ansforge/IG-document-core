# Modèle logique métier - FR LM Participant - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Participant**

## Logical Model: Modèle logique métier - FR LM Participant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMParticipant |

 
Personne/Structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md) and [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-participant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-participant.csv), [Excel](StructureDefinition-fr-lm-participant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-participant",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
  "version" : "0.1.0",
  "name" : "FRLMParticipant",
  "title" : "Modèle logique métier - FR LM Participant",
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
  "description" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-participant",
        "path" : "fr-lm-participant",
        "short" : "Modèle logique métier - FR LM Participant",
        "definition" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs."
      },
      {
        "id" : "fr-lm-participant.typeParticipation",
        "path" : "fr-lm-participant.typeParticipation",
        "short" : "Type de participation.",
        "definition" : "Type de participation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-participant.roleFonctionnel",
        "path" : "fr-lm-participant.roleFonctionnel",
        "short" : "Rôle fonctionnel.",
        "definition" : "Rôle fonctionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-participant.dateDebutEtOuFinParticipation",
        "path" : "fr-lm-participant.dateDebutEtOuFinParticipation",
        "short" : "Date de début et/ou de fin de la participation.",
        "definition" : "Date de début et/ou de fin de la participation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-lm-participant.participant",
        "path" : "fr-lm-participant.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure"
          }
        ]
      }
    ]
  }
}

```
