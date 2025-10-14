# Participant - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Participant**

## Logical Model: Participant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrParticipantCorps |

 
Modèle logique métier de l’élément Participant 

**Usages:**

* Use this Logical Model: [Acte](StructureDefinition-FrActe.md), [Autorisation exposition](StructureDefinition-FrAutorisationExposition.md), [Rencontre](StructureDefinition-FrRencontre.md) and [Technique imagerie](StructureDefinition-FrTechniqueImagerie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrParticipantCorps)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrParticipantCorps.csv), [Excel](StructureDefinition-FrParticipantCorps.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrParticipantCorps",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps",
  "version" : "0.1.0",
  "name" : "FrParticipantCorps",
  "title" : "Participant",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Modèle logique métier de l'élément Participant",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrParticipantCorps",
        "path" : "FrParticipantCorps",
        "short" : "Participant",
        "definition" : "Modèle logique métier de l'élément Participant"
      },
      {
        "id" : "FrParticipantCorps.dateEtHeureParticipation",
        "path" : "FrParticipantCorps.dateEtHeureParticipation",
        "short" : "Date et heure de la participation",
        "definition" : "Date et heure de la participation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole",
        "path" : "FrParticipantCorps.participantRole",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.IdentifiantParticipant",
        "path" : "FrParticipantCorps.participantRole.IdentifiantParticipant",
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
        "id" : "FrParticipantCorps.participantRole.typeParticipant",
        "path" : "FrParticipantCorps.participantRole.typeParticipant",
        "short" : "Type de participant",
        "definition" : "Type de participant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.adresses",
        "path" : "FrParticipantCorps.participantRole.adresses",
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
        "id" : "FrParticipantCorps.participantRole.coordonneesTelecom",
        "path" : "FrParticipantCorps.participantRole.coordonneesTelecom",
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
        "id" : "FrParticipantCorps.participantRole.identiteParticipant",
        "path" : "FrParticipantCorps.participantRole.identiteParticipant",
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
        "id" : "FrParticipantCorps.participantRole.identiteParticipant.ProfessionSpecialite",
        "path" : "FrParticipantCorps.participantRole.identiteParticipant.ProfessionSpecialite",
        "short" : "Profession / spécialité du participant",
        "definition" : "Profession / spécialité du participant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.identiteParticipant.nom",
        "path" : "FrParticipantCorps.participantRole.identiteParticipant.nom",
        "short" : "Nom du participant",
        "definition" : "Nom du participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.identiteParticipant.description",
        "path" : "FrParticipantCorps.participantRole.identiteParticipant.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.dispositifAutomatique",
        "path" : "FrParticipantCorps.participantRole.dispositifAutomatique",
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
        "id" : "FrParticipantCorps.participantRole.dispositifAutomatique.categorie",
        "path" : "FrParticipantCorps.participantRole.dispositifAutomatique.categorie",
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
        "id" : "FrParticipantCorps.participantRole.dispositifAutomatique.nomModele",
        "path" : "FrParticipantCorps.participantRole.dispositifAutomatique.nomModele",
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
        "id" : "FrParticipantCorps.participantRole.dispositifAutomatique.nomLogiciel",
        "path" : "FrParticipantCorps.participantRole.dispositifAutomatique.nomLogiciel",
        "short" : "Nom du logiciel",
        "definition" : "Nom du logiciel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.Organisation",
        "path" : "FrParticipantCorps.participantRole.Organisation",
        "short" : "Organisation",
        "definition" : "Organisation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.Organisation.identifiant",
        "path" : "FrParticipantCorps.participantRole.Organisation.identifiant",
        "short" : "Identifiant de l'organisme",
        "definition" : "Identifiant de l'organisme",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.Organisation.code",
        "path" : "FrParticipantCorps.participantRole.Organisation.code",
        "short" : "Code de l'organisme",
        "definition" : "Code de l'organisme",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrParticipantCorps.participantRole.Organisation.description",
        "path" : "FrParticipantCorps.participantRole.Organisation.description",
        "short" : "Nom de l'organisation",
        "definition" : "Nom de l'organisation",
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
