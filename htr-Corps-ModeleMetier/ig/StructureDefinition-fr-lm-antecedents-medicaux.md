# Modèle logique métier - FR LM Antécédents médicaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Antécédents médicaux**

## Logical Model: Modèle logique métier - FR LM Antécédents médicaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMAntecedentsMedicaux |

 
Section Antécédents médicaux 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-antecedents-medicaux)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-antecedents-medicaux.csv), [Excel](StructureDefinition-fr-lm-antecedents-medicaux.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-antecedents-medicaux",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux",
  "version" : "0.1.0",
  "name" : "FRLMAntecedentsMedicaux",
  "title" : "Modèle logique métier - FR LM Antécédents médicaux",
  "status" : "draft",
  "date" : "2025-10-21T08:19:27+00:00",
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
  "description" : "Section Antécédents médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-antecedents-medicaux",
        "path" : "fr-lm-antecedents-medicaux",
        "short" : "Modèle logique métier - FR LM Antécédents médicaux",
        "definition" : "Section Antécédents médicaux"
      },
      {
        "id" : "fr-lm-antecedents-medicaux.titreSection",
        "path" : "fr-lm-antecedents-medicaux.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-antecedents-medicaux.sousSection",
        "path" : "fr-lm-antecedents-medicaux.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-antecedents-medicaux.entree",
        "path" : "fr-lm-antecedents-medicaux.entree",
        "min" : 1
      },
      {
        "id" : "fr-lm-antecedents-medicaux.entree.problemes",
        "path" : "fr-lm-antecedents-medicaux.entree.problemes",
        "short" : "Entrée Problème",
        "definition" : "Entrée Problème",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-probleme"
          }
        ]
      }
    ]
  }
}

```
