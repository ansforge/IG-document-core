# Commentaire - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commentaire**

## Logical Model: Commentaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrCommentaireER |

 
Entrée Commentaire 

**Usages:**

* Use this Logical Model: [Problème](StructureDefinition-FrProbleme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrCommentaireER)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrCommentaireER.csv), [Excel](StructureDefinition-FrCommentaireER.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrCommentaireER",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER",
  "version" : "0.1.0",
  "name" : "FrCommentaireER",
  "title" : "Commentaire",
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
  "description" : "Entrée Commentaire",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrCommentaireER",
        "path" : "FrCommentaireER",
        "short" : "Commentaire",
        "definition" : "Entrée Commentaire"
      },
      {
        "id" : "FrCommentaireER.codeCommentaireER",
        "path" : "FrCommentaireER.codeCommentaireER",
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
        "id" : "FrCommentaireER.texteCommentaireER",
        "path" : "FrCommentaireER.texteCommentaireER",
        "short" : "Texte du commentaire",
        "definition" : "Texte du commentaire",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrCommentaireER.statutCommentaireER",
        "path" : "FrCommentaireER.statutCommentaireER",
        "short" : "Statut de l'entrée Fixé à la valeu'completed'",
        "definition" : "Statut de l'entrée Fixé à la valeu'completed'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrCommentaireER.auteurCommentaireER",
        "path" : "FrCommentaireER.auteurCommentaireER",
        "short" : "Ateur",
        "definition" : "Ateur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
