# Modèle logique métier - FR LM Conclusion examen d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Conclusion examen d'imagerie**

## Logical Model: Modèle logique métier - FR LM Conclusion examen d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMConclusionExamenImagerie |

 
Section Conclusion examen d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-conclusion-examen-imagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-conclusion-examen-imagerie.csv), [Excel](StructureDefinition-fr-lm-conclusion-examen-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-conclusion-examen-imagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMConclusionExamenImagerie",
  "title" : "Modèle logique métier - FR LM Conclusion examen d'imagerie",
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
  "description" : "Section Conclusion examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-conclusion-examen-imagerie",
        "path" : "fr-lm-conclusion-examen-imagerie",
        "short" : "Modèle logique métier - FR LM Conclusion examen d'imagerie",
        "definition" : "Section Conclusion examen d'imagerie"
      },
      {
        "id" : "fr-lm-conclusion-examen-imagerie.titreSection",
        "path" : "fr-lm-conclusion-examen-imagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-conclusion-examen-imagerie.sousSection",
        "path" : "fr-lm-conclusion-examen-imagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-conclusion-examen-imagerie.entree",
        "path" : "fr-lm-conclusion-examen-imagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
