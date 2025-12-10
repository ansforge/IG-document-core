# Modèle logique métier - FR LM Addendum - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Addendum**

## Logical Model: Modèle logique métier - FR LM Addendum 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:FRLMAddendum |

 
Section Addendum 

**Utilisations:**

* Utiliser ce Modèle logique: [Modèle logique métier - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-addendum)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-addendum.csv), [Excel](StructureDefinition-fr-lm-addendum.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-addendum",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum",
  "version" : "0.1.0",
  "name" : "FRLMAddendum",
  "title" : "Modèle logique métier - FR LM Addendum",
  "status" : "draft",
  "date" : "2025-12-10T14:26:49+00:00",
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
  "description" : "Section Addendum",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-addendum",
        "path" : "fr-lm-addendum",
        "short" : "Modèle logique métier - FR LM Addendum",
        "definition" : "Section Addendum"
      },
      {
        "id" : "fr-lm-addendum.titreSection",
        "path" : "fr-lm-addendum.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-addendum.sousSection",
        "path" : "fr-lm-addendum.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-addendum.entree",
        "path" : "fr-lm-addendum.entree",
        "max" : "0"
      },
      {
        "id" : "fr-lm-addendum.auteur",
        "path" : "fr-lm-addendum.auteur",
        "short" : "auteur du document",
        "definition" : "auteur du document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur"
          }
        ]
      }
    ]
  }
}

```
