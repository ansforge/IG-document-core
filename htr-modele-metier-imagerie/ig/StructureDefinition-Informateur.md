# Modèle métier - Informateur - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Informateur**

## Logical Model: Modèle métier - Informateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:Informateur |

 
Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d’urgence, aidant, aidé. 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md), [Acte](StructureDefinition-FrActe.md) and [Rencontre](StructureDefinition-FrRencontre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Informateur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Informateur.csv), [Excel](StructureDefinition-Informateur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Informateur",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur",
  "version" : "0.1.0",
  "name" : "Informateur",
  "title" : "Modèle métier - Informateur",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Informateur",
        "path" : "Informateur",
        "short" : "Modèle métier - Informateur",
        "definition" : "Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé."
      },
      {
        "id" : "Informateur.informateur",
        "path" : "Informateur.informateur",
        "short" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
        "definition" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      }
    ]
  }
}

```
