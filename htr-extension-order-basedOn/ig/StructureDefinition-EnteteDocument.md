# Modèle logique métier de l'en-tête - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier de l'en-tête**

## Logical Model: Modèle logique métier de l'en-tête 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:EnteteDocument |

 
Eléments de l’entête d’un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/EnteteDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EnteteDocument.csv), [Excel](StructureDefinition-EnteteDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EnteteDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument",
  "version" : "0.1.0",
  "name" : "EnteteDocument",
  "title" : "Modèle logique métier de l'en-tête",
  "status" : "draft",
  "date" : "2025-10-13T07:55:38+00:00",
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
  "description" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...).",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EnteteDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EnteteDocument",
        "path" : "EnteteDocument",
        "short" : "Modèle logique métier de l'en-tête",
        "definition" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...).",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "EnteteDocument.identifiantUniqueDocument",
        "path" : "EnteteDocument.identifiantUniqueDocument",
        "short" : "Identifiant unique du document.",
        "definition" : "Identifiant unique du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EnteteDocument.modeleDocument",
        "path" : "EnteteDocument.modeleDocument",
        "short" : "Modèle du document et version du modèle.",
        "definition" : "Modèle du document et version du modèle.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EnteteDocument.typeDocument",
        "path" : "EnteteDocument.typeDocument",
        "short" : "Type de document.",
        "definition" : "Type de document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EnteteDocument.titreDocument",
        "path" : "EnteteDocument.titreDocument",
        "short" : "Titre du document.",
        "definition" : "Titre du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EnteteDocument.dateDeCreationDocument",
        "path" : "EnteteDocument.dateDeCreationDocument",
        "short" : "Date de création du document.",
        "definition" : "Date de création du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EnteteDocument.niveauConfidentialiteDocument",
        "path" : "EnteteDocument.niveauConfidentialiteDocument",
        "short" : "Niveau de confidentialité du document.",
        "definition" : "Niveau de confidentialité du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "EnteteDocument.languePrincipaleDocument",
        "path" : "EnteteDocument.languePrincipaleDocument",
        "short" : "Langue principale du document.",
        "definition" : "Langue principale du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "EnteteDocument.identifiantLotDeVersionsDocument",
        "path" : "EnteteDocument.identifiantLotDeVersionsDocument",
        "short" : "Identifiant du lot de versions du même document.",
        "definition" : "Identifiant du lot de versions du même document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EnteteDocument.versionDocument",
        "path" : "EnteteDocument.versionDocument",
        "short" : "Numéro de version du document.",
        "definition" : "Numéro de version du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EnteteDocument.statutDocument",
        "path" : "EnteteDocument.statutDocument",
        "short" : "Statut du document.",
        "definition" : "Statut du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "EnteteDocument.patient",
        "path" : "EnteteDocument.patient",
        "short" : "Patient / Usager.",
        "definition" : "Patient / Usager.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PatientUsager"
          }
        ]
      },
      {
        "id" : "EnteteDocument.auteur",
        "path" : "EnteteDocument.auteur",
        "short" : "Auteur du document.",
        "definition" : "Auteur du document.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "EnteteDocument.operateurSaisie",
        "path" : "EnteteDocument.operateurSaisie",
        "short" : "Opérateur de saisie.",
        "definition" : "Opérateur de saisie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie"
          }
        ]
      },
      {
        "id" : "EnteteDocument.informateur",
        "path" : "EnteteDocument.informateur",
        "short" : "Informateur ayant fourni des informations utiles à la production du document.",
        "definition" : "Informateur ayant fourni des informations utiles à la production du document.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"
          }
        ]
      },
      {
        "id" : "EnteteDocument.structureConservation",
        "path" : "EnteteDocument.structureConservation",
        "short" : "Structure chargée de la conservation du document.",
        "definition" : "Structure chargée de la conservation du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation"
          }
        ]
      },
      {
        "id" : "EnteteDocument.destinataire",
        "path" : "EnteteDocument.destinataire",
        "short" : "Destinataire prévu du document.",
        "definition" : "Destinataire prévu du document.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DestinatairePrevu"
          }
        ]
      },
      {
        "id" : "EnteteDocument.responsable",
        "path" : "EnteteDocument.responsable",
        "short" : "Responsable du document.",
        "definition" : "Responsable du document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Responsable"
          }
        ]
      },
      {
        "id" : "EnteteDocument.validateur",
        "path" : "EnteteDocument.validateur",
        "short" : "Professionnel attestant la validité du contenu du document.",
        "definition" : "Professionnel attestant la validité du contenu du document.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Validateur"
          }
        ]
      },
      {
        "id" : "EnteteDocument.participant",
        "path" : "EnteteDocument.participant",
        "short" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
        "definition" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant"
          }
        ]
      },
      {
        "id" : "EnteteDocument.prescription",
        "path" : "EnteteDocument.prescription",
        "short" : "Association du document à une prescription.",
        "definition" : "Association du document à une prescription.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Prescription"
          }
        ]
      },
      {
        "id" : "EnteteDocument.evenement",
        "path" : "EnteteDocument.evenement",
        "short" : "Evènement documenté et notamment le cadre d'exercice.",
        "definition" : "Evènement documenté et notamment le cadre d'exercice.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement"
          }
        ]
      },
      {
        "id" : "EnteteDocument.documentDeReference",
        "path" : "EnteteDocument.documentDeReference",
        "short" : "Document de référence (à remplacer, transformé, …).",
        "definition" : "Document de référence (à remplacer, transformé, …).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference"
          }
        ]
      },
      {
        "id" : "EnteteDocument.consentementAssocie",
        "path" : "EnteteDocument.consentementAssocie",
        "short" : "Consentement associé au document.",
        "definition" : "Consentement associé au document.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Consentement"
          }
        ]
      },
      {
        "id" : "EnteteDocument.priseEncharge",
        "path" : "EnteteDocument.priseEncharge",
        "short" : "Association du document à une prise en charge.",
        "definition" : "Association du document à une prise en charge.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge"
          }
        ]
      }
    ]
  }
}

```
