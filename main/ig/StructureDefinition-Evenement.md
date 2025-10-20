# Modèle métier - Évènement documenté - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Évènement documenté**

## Logical Model: Modèle métier - Évènement documenté 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:Evenement |

 
Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Evenement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Evenement.csv), [Excel](StructureDefinition-Evenement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Evenement",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement",
  "version" : "0.1.0",
  "name" : "Evenement",
  "title" : "Modèle métier - Évènement documenté",
  "status" : "draft",
  "date" : "2025-10-20T17:15:49+00:00",
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
  "description" : "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Evenement",
        "path" : "Evenement",
        "short" : "Modèle métier - Évènement documenté",
        "definition" : "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant.",
        "min" : 1
      },
      {
        "id" : "Evenement.identifiantEvenement",
        "path" : "Evenement.identifiantEvenement",
        "short" : "Identifiant de l’évènement documenté. \n Obligatoire pour :\n  - une demande d'acte d'imagerie pour porter l'Order Placer Number.\n  - un CR d’imagerie pour porter le studyInstanceUID.\n Fourni si connu pour :\n  - une prescription pour porter l'identifiant EPU de la prescription.",
        "definition" : "Identifiant de l’évènement documenté. \n Obligatoire pour :\n  - une demande d'acte d'imagerie pour porter l'Order Placer Number.\n  - un CR d’imagerie pour porter le studyInstanceUID.\n Fourni si connu pour :\n  - une prescription pour porter l'identifiant EPU de la prescription.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Evenement.codeEvenement",
        "path" : "Evenement.codeEvenement",
        "short" : "Code de l’évènement documenté.  \n Obligatoire pour :\n  - une demande d'actes d'imagerie (code LOINC ='55115-0' 'Demande d’actes d’imagerie')\n  - un CR d’imagerie (code LOINC de l'acte d'imagerie),\n  - un CR d’examen de l’enfant (code SNOMED CT ='11429006' 'consultation'),\n  - un document d’expression personnelle du patient/usager (code TRE_A00 'EXP_PATIENT' 'Expression personnelle du patient').",
        "definition" : "Code de l’évènement documenté.  \n Obligatoire pour :\n  - une demande d'actes d'imagerie (code LOINC ='55115-0' 'Demande d’actes d’imagerie')\n  - un CR d’imagerie (code LOINC de l'acte d'imagerie),\n  - un CR d’examen de l’enfant (code SNOMED CT ='11429006' 'consultation'),\n  - un document d’expression personnelle du patient/usager (code TRE_A00 'EXP_PATIENT' 'Expression personnelle du patient').",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Evenement.codeEvenement.id",
        "path" : "Evenement.codeEvenement.id",
        "max" : "0"
      },
      {
        "id" : "Evenement.codeEvenement.extension",
        "path" : "Evenement.codeEvenement.extension",
        "max" : "0"
      },
      {
        "id" : "Evenement.codeEvenement.translation",
        "path" : "Evenement.codeEvenement.translation",
        "short" : "Translation. \n Obligatoire pour : \n  - un CR d’imagerie pour indiquer\n   - 1..* la (ou les) modalité(s) d'acquisition,\n   - 1..* la (ou les) région(s) anatomique(s)\n  - un CR d’examen de l’enfant pour indiquer l'examen (jdv-examen-enfant-obligatoire-cisis).",
        "definition" : "Translation. \n Obligatoire pour : \n  - un CR d’imagerie pour indiquer\n   - 1..* la (ou les) modalité(s) d'acquisition,\n   - 1..* la (ou les) région(s) anatomique(s)\n  - un CR d’examen de l’enfant pour indiquer l'examen (jdv-examen-enfant-obligatoire-cisis).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Evenement.dateHeureEvenement",
        "path" : "Evenement.dateHeureEvenement",
        "short" : "Date et heure de début et de fin de l’évènement documenté. \n  Date de début obligatoire pour l'évènement documenté principal.",
        "definition" : "Date et heure de début et de fin de l’évènement documenté. \n  Date de début obligatoire pour l'évènement documenté principal.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Evenement.executantEvenement",
        "path" : "Evenement.executantEvenement",
        "short" : "Exécutant. \n  Obligatoire pour l'évènement documenté principal.",
        "definition" : "Exécutant. \n  Obligatoire pour l'évènement documenté principal.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "Evenement.executantEvenement.roleFonctionnel",
        "path" : "Evenement.executantEvenement.roleFonctionnel",
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
        "id" : "Evenement.executantEvenement.dateHeureParticipation",
        "path" : "Evenement.executantEvenement.dateHeureParticipation",
        "short" : "Date et heure de participation.",
        "definition" : "Date et heure de participation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Evenement.executantEvenement.executant",
        "path" : "Evenement.executantEvenement.executant",
        "short" : "Exécutant. \n  Le cadre d'exercice est obligatoire pour l'évènement documenté principal.",
        "definition" : "Exécutant. \n  Le cadre d'exercice est obligatoire pour l'évènement documenté principal.",
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
