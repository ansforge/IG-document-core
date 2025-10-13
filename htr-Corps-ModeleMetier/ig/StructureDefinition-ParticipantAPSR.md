# Participant APSR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Participant APSR**

## Logical Model: Participant APSR 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/ParticipantAPSR | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:ParticipantAPSR |

 
Modèle logique métier de l’élément Participant APSR 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/ParticipantAPSR)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ParticipantAPSR.csv), [Excel](StructureDefinition-ParticipantAPSR.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ParticipantAPSR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/ParticipantAPSR",
  "version" : "0.1.0",
  "name" : "ParticipantAPSR",
  "title" : "Participant APSR",
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
  "description" : "Modèle logique métier de l'élément Participant APSR",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/ParticipantAPSR",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ParticipantAPSR",
        "path" : "ParticipantAPSR",
        "short" : "Participant APSR",
        "definition" : "Modèle logique métier de l'élément Participant APSR"
      },
      {
        "id" : "ParticipantAPSR.periodeParticipation",
        "path" : "ParticipantAPSR.periodeParticipation",
        "short" : "Période de participation",
        "definition" : "Période de participation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole",
        "path" : "ParticipantAPSR.participantRole",
        "short" : "Participant APSR",
        "definition" : "Participant APSR",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.IdentifiantParticipant",
        "path" : "ParticipantAPSR.participantRole.IdentifiantParticipant",
        "short" : "Identifiant du participant",
        "definition" : "Identifiant du participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.adresses",
        "path" : "ParticipantAPSR.participantRole.adresses",
        "short" : "Adresses du participant",
        "definition" : "Adresses du participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.coordonneesTelecom",
        "path" : "ParticipantAPSR.participantRole.coordonneesTelecom",
        "short" : "Coordonnées télécom du participant",
        "definition" : "Coordonnées télécom du participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.identiteParticipant",
        "path" : "ParticipantAPSR.participantRole.identiteParticipant",
        "short" : "Identité du participant",
        "definition" : "Identité du participant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.identiteParticipant.nom",
        "path" : "ParticipantAPSR.participantRole.identiteParticipant.nom",
        "short" : "Nom du participant",
        "definition" : "Nom du participant",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.dispositifAutomatique",
        "path" : "ParticipantAPSR.participantRole.dispositifAutomatique",
        "short" : "Dispositif automatique",
        "definition" : "Dispositif automatique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.dispositifAutomatique.categorie",
        "path" : "ParticipantAPSR.participantRole.dispositifAutomatique.categorie",
        "short" : "Catégorie de dispositif",
        "definition" : "Catégorie de dispositif",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.dispositifAutomatique.nomModele",
        "path" : "ParticipantAPSR.participantRole.dispositifAutomatique.nomModele",
        "short" : "Nom du modèle",
        "definition" : "Nom du modèle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ParticipantAPSR.participantRole.dispositifAutomatique.nomLogiciel",
        "path" : "ParticipantAPSR.participantRole.dispositifAutomatique.nomLogiciel",
        "short" : "Nom du logiciel",
        "definition" : "Nom du logiciel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
