# Modèle logique métier - FR LM Informateur - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Informateur**

## Logical Model: Modèle logique métier - FR LM Informateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informateur | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMInformateur |

 
Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d’urgence, aidant, aidé. 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-informateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-informateur.csv), [Excel](StructureDefinition-fr-lm-informateur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-informateur",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informateur",
  "version" : "0.1.0",
  "name" : "FRLMInformateur",
  "title" : "Modèle logique métier - FR LM Informateur",
  "status" : "draft",
  "date" : "2025-10-21T16:49:23+00:00",
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
  "description" : "Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informateur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-informateur",
        "path" : "fr-lm-informateur",
        "short" : "Modèle logique métier - FR LM Informateur",
        "definition" : "Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé."
      },
      {
        "id" : "fr-lm-informateur.informateur",
        "path" : "fr-lm-informateur.informateur",
        "short" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
        "definition" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure"
          }
        ]
      }
    ]
  }
}

```
