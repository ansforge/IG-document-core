# Modèle logique métier - FR LM Traitements administrés - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Traitements administrés**

## Logical Model: Modèle logique métier - FR LM Traitements administrés 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMTraitementsAdministres |

 
Section Traitements administrés 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-traitements-administres)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-traitements-administres.csv), [Excel](StructureDefinition-fr-lm-traitements-administres.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-traitements-administres",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres",
  "version" : "0.1.0",
  "name" : "FRLMTraitementsAdministres",
  "title" : "Modèle logique métier - FR LM Traitements administrés",
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
  "description" : "Section Traitements administrés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-traitements-administres",
        "path" : "fr-lm-traitements-administres",
        "short" : "Modèle logique métier - FR LM Traitements administrés",
        "definition" : "Section Traitements administrés"
      },
      {
        "id" : "fr-lm-traitements-administres.sousSection",
        "path" : "fr-lm-traitements-administres.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-traitements-administres.entree",
        "path" : "fr-lm-traitements-administres.entree",
        "min" : 1
      },
      {
        "id" : "fr-lm-traitements-administres.entree.traitementAdministre",
        "path" : "fr-lm-traitements-administres.entree.traitementAdministre",
        "short" : "Entrée Traitement",
        "definition" : "Entrée Traitement",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
          }
        ]
      }
    ]
  }
}

```
