# Modèle logique métier - FR LM Statut du document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Statut du document**

## Logical Model: Modèle logique métier - FR LM Statut du document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMStatutDocument |

 
Section Statut du document 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-statut-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-statut-document.csv), [Excel](StructureDefinition-fr-lm-statut-document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-statut-document",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document",
  "version" : "0.1.0",
  "name" : "FRLMStatutDocument",
  "title" : "Modèle logique métier - FR LM Statut du document",
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
  "description" : "Section Statut du document",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-statut-document",
        "path" : "fr-lm-statut-document",
        "short" : "Modèle logique métier - FR LM Statut du document",
        "definition" : "Section Statut du document"
      },
      {
        "id" : "fr-lm-statut-document.titreSection",
        "path" : "fr-lm-statut-document.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-statut-document.sousSection",
        "path" : "fr-lm-statut-document.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-statut-document.entree",
        "path" : "fr-lm-statut-document.entree",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "fr-lm-statut-document.entree.statutDocument",
        "path" : "fr-lm-statut-document.entree.statutDocument",
        "short" : "Entrée Statut du document",
        "definition" : "Entrée Statut du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document-entree"
          }
        ]
      }
    ]
  }
}

```
