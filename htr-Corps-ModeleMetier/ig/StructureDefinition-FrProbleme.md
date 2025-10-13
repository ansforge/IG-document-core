# Problème - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Problème**

## Logical Model: Problème 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrProbleme |

 
Entrée Problème 

**Usages:**

* Use this Logical Model: [Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie](StructureDefinition-FrAllergieOuHypersensibilite.md), [Antécédents médicaux](StructureDefinition-FrAntecedentsMedicaux.md), [Effet indesirable](StructureDefinition-FrEffetIndesirable.md), [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md)...Show 4 more,[Problèmes actifs](StructureDefinition-FrProblemesActifs.md),[Raison de la recommandation](StructureDefinition-FrRaisonRecommandation.md),[Résultats d'événements](StructureDefinition-FrResultatsEvenements.md)and[Vaccination](StructureDefinition-FrVaccination.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrProbleme)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrProbleme.csv), [Excel](StructureDefinition-FrProbleme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrProbleme",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme",
  "version" : "0.1.0",
  "name" : "FrProbleme",
  "title" : "Problème",
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
  "description" : "Entrée Problème",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrProbleme",
        "path" : "FrProbleme",
        "short" : "Problème",
        "definition" : "Entrée Problème"
      },
      {
        "id" : "FrProbleme.identifiant",
        "path" : "FrProbleme.identifiant",
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
        "id" : "FrProbleme.type",
        "path" : "FrProbleme.type",
        "short" : "Type d'observation",
        "definition" : "Type d'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrProbleme.description",
        "path" : "FrProbleme.description",
        "short" : "Description narrative du problème. Cet élément permet de décrire le problème enregistré, les dates, commentaires, etc..",
        "definition" : "Description narrative du problème. Cet élément permet de décrire le problème enregistré, les dates, commentaires, etc..",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrProbleme.problemeObserve",
        "path" : "FrProbleme.problemeObserve",
        "short" : "Problème observé",
        "definition" : "Problème observé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrProbleme.statut",
        "path" : "FrProbleme.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrProbleme.dateProbleme",
        "path" : "FrProbleme.dateProbleme",
        "short" : "Date de début du problème",
        "definition" : "Date de début du problème",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrProbleme.statutProbleme",
        "path" : "FrProbleme.statutProbleme",
        "short" : "Statut du problème",
        "definition" : "Statut du problème",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutProbleme"
          }
        ]
      },
      {
        "id" : "FrProbleme.severite",
        "path" : "FrProbleme.severite",
        "short" : "Sévérité",
        "definition" : "Sévérité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSeverite"
          }
        ]
      },
      {
        "id" : "FrProbleme.certitude",
        "path" : "FrProbleme.certitude",
        "short" : "Certitude",
        "definition" : "Certitude",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCertitude"
          }
        ]
      },
      {
        "id" : "FrProbleme.statutClinique",
        "path" : "FrProbleme.statutClinique",
        "short" : "Statut clinique du patient",
        "definition" : "Statut clinique du patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutCliniquePatient"
          }
        ]
      },
      {
        "id" : "FrProbleme.reference",
        "path" : "FrProbleme.reference",
        "short" : "Document référencé",
        "definition" : "Document référencé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProbleme.reference.externalDocument",
        "path" : "FrProbleme.reference.externalDocument",
        "short" : "Document référencé",
        "definition" : "Document référencé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProbleme.reference.externalDocument.identifiant",
        "path" : "FrProbleme.reference.externalDocument.identifiant",
        "short" : "Identifiant du document",
        "definition" : "Identifiant du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier"
            ]
          }
        ]
      },
      {
        "id" : "FrProbleme.reference.externalDocument.text",
        "path" : "FrProbleme.reference.externalDocument.text",
        "short" : "Référence externe du document",
        "definition" : "Référence externe du document",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrProbleme.reference.externalDocument.text.reference",
        "path" : "FrProbleme.reference.externalDocument.text.reference",
        "short" : "Cet élément contient l’URL du document",
        "definition" : "Cet élément contient l’URL du document",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "FrProbleme.commentaire",
        "path" : "FrProbleme.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      }
    ]
  }
}

```
