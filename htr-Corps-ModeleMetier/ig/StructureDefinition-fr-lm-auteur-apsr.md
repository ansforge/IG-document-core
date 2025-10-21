# Modèle logique métier - FR LM Auteur APSR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Auteur APSR**

## Logical Model: Modèle logique métier - FR LM Auteur APSR 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur-apsr | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMAuteurAPSR |

 
Auteur APSR, la structure de cet élément est identique à celle de l’élément Auteur 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-auteur-apsr)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-auteur-apsr.csv), [Excel](StructureDefinition-fr-lm-auteur-apsr.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-auteur-apsr",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur-apsr",
  "version" : "0.1.0",
  "name" : "FRLMAuteurAPSR",
  "title" : "Modèle logique métier - FR LM Auteur APSR",
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
  "description" : "Auteur APSR, la structure de cet élément est identique à celle de l’élément Auteur",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur-apsr",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-auteur-apsr",
        "path" : "fr-lm-auteur-apsr",
        "short" : "Modèle logique métier - FR LM Auteur APSR",
        "definition" : "Auteur APSR, la structure de cet élément est identique à celle de l’élément Auteur"
      }
    ]
  }
}

```
