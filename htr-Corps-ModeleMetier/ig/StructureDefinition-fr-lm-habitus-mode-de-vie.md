# Modèle logique métier - FR LM Habitus et modes de vie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Habitus et modes de vie**

## Logical Model: Modèle logique métier - FR LM Habitus et modes de vie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMHabitusModeDeVie |

 
Section Habitus et modes de vie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md) and [Modèle logique métier - FR LM Habitus et modes de vie](StructureDefinition-fr-lm-habitus-mode-de-vie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-habitus-mode-de-vie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-habitus-mode-de-vie.csv), [Excel](StructureDefinition-fr-lm-habitus-mode-de-vie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-habitus-mode-de-vie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie",
  "version" : "0.1.0",
  "name" : "FRLMHabitusModeDeVie",
  "title" : "Modèle logique métier - FR LM Habitus et modes de vie",
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
  "description" : "Section Habitus et modes de vie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-habitus-mode-de-vie",
        "path" : "fr-lm-habitus-mode-de-vie",
        "short" : "Modèle logique métier - FR LM Habitus et modes de vie",
        "definition" : "Section Habitus et modes de vie"
      },
      {
        "id" : "fr-lm-habitus-mode-de-vie.titreSection",
        "path" : "fr-lm-habitus-mode-de-vie.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-habitus-mode-de-vie.sousSection",
        "path" : "fr-lm-habitus-mode-de-vie.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-habitus-mode-de-vie.entree.habitusModeDeVieEntry",
        "path" : "fr-lm-habitus-mode-de-vie.entree.habitusModeDeVieEntry",
        "short" : "Entrée Habitus, Mode de vie",
        "definition" : "Entrée Habitus, Mode de vie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie"
          }
        ]
      }
    ]
  }
}

```
