# Modèle logique métier - FR LM Effets indesirables - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Effets indesirables**

## Logical Model: Modèle logique métier - FR LM Effets indesirables 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMEffetsIndesirables |

 
Section Effets indesirables 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-effets-indesirables)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-effets-indesirables.csv), [Excel](StructureDefinition-fr-lm-effets-indesirables.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-effets-indesirables",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables",
  "version" : "0.1.0",
  "name" : "FRLMEffetsIndesirables",
  "title" : "Modèle logique métier - FR LM Effets indesirables",
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
  "description" : "Section Effets indesirables",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-effets-indesirables",
        "path" : "fr-lm-effets-indesirables",
        "short" : "Modèle logique métier - FR LM Effets indesirables",
        "definition" : "Section Effets indesirables"
      },
      {
        "id" : "fr-lm-effets-indesirables.titreSection",
        "path" : "fr-lm-effets-indesirables.titreSection",
        "min" : 1
      },
      {
        "id" : "fr-lm-effets-indesirables.sousSection",
        "path" : "fr-lm-effets-indesirables.sousSection",
        "max" : "0"
      },
      {
        "id" : "fr-lm-effets-indesirables.entree",
        "path" : "fr-lm-effets-indesirables.entree",
        "min" : 1
      },
      {
        "id" : "fr-lm-effets-indesirables.entree.effetIndesirable",
        "path" : "fr-lm-effets-indesirables.entree.effetIndesirable",
        "short" : "Entrée Effet indesirable",
        "definition" : "Entrée Effet indesirable",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable"
          }
        ]
      }
    ]
  }
}

```
