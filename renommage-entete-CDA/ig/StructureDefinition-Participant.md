# Modèle métier - Autres personnes / structures impliquées - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Autres personnes / structures impliquées**

## Logical Model: Modèle métier - Autres personnes / structures impliquées 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:Participant |

 
Personne/Structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Participant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Participant.csv), [Excel](StructureDefinition-Participant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Participant",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant",
  "version" : "0.1.0",
  "name" : "Participant",
  "title" : "Modèle métier - Autres personnes / structures impliquées",
  "status" : "draft",
  "date" : "2025-10-20T12:52:41+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Participant",
        "path" : "Participant",
        "short" : "Modèle métier - Autres personnes / structures impliquées",
        "definition" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs."
      },
      {
        "id" : "Participant.typeParticipation",
        "path" : "Participant.typeParticipation",
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
        "id" : "Participant.roleFonctionnel",
        "path" : "Participant.roleFonctionnel",
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
        "id" : "Participant.dateDebutEtOuFinParticipation",
        "path" : "Participant.dateDebutEtOuFinParticipation",
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
        "id" : "Participant.participant",
        "path" : "Participant.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      }
    ]
  }
}

```
