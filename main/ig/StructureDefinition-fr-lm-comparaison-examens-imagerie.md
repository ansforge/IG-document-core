# Modèle logique métier - FR LM Comparaison d'examens d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Comparaison d'examens d'imagerie**

## Logical Model: Modèle logique métier - FR LM Comparaison d'examens d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:FRLMComparaisonExamensImagerie |

 
Section Comparaison d’examens d’imagerie 

**Utilisations:**

* Utiliser ce Modèle logique: [Modèle logique métier - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-comparaison-examens-imagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-comparaison-examens-imagerie.csv), [Excel](StructureDefinition-fr-lm-comparaison-examens-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-comparaison-examens-imagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMComparaisonExamensImagerie",
  "title" : "Modèle logique métier - FR LM Comparaison d'examens d'imagerie",
  "status" : "draft",
  "date" : "2025-12-03T15:31:39+00:00",
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
  "description" : "Section Comparaison d'examens d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-comparaison-examens-imagerie",
        "path" : "fr-lm-comparaison-examens-imagerie",
        "short" : "Modèle logique métier - FR LM Comparaison d'examens d'imagerie",
        "definition" : "Section Comparaison d'examens d'imagerie"
      },
      {
        "id" : "fr-lm-comparaison-examens-imagerie.titreSection",
        "path" : "fr-lm-comparaison-examens-imagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-comparaison-examens-imagerie.sousSection",
        "path" : "fr-lm-comparaison-examens-imagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-comparaison-examens-imagerie.entree",
        "path" : "fr-lm-comparaison-examens-imagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
