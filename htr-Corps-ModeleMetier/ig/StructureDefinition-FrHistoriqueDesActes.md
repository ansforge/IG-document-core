# Historique des actes - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Historique des actes**

## Logical Model: Historique des actes 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueDesActes | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrHistoriqueDesActes |

 
Section Historique des actes 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrHistoriqueDesActes)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrHistoriqueDesActes.csv), [Excel](StructureDefinition-FrHistoriqueDesActes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrHistoriqueDesActes",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueDesActes",
  "version" : "0.1.0",
  "name" : "FrHistoriqueDesActes",
  "title" : "Historique des actes",
  "status" : "draft",
  "date" : "2025-10-13T08:32:48+00:00",
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
  "description" : "Section Historique des actes",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueDesActes",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrHistoriqueDesActes",
        "path" : "FrHistoriqueDesActes",
        "short" : "Historique des actes",
        "definition" : "Section Historique des actes"
      },
      {
        "id" : "FrHistoriqueDesActes.titreSection",
        "path" : "FrHistoriqueDesActes.titreSection",
        "min" : 1
      },
      {
        "id" : "FrHistoriqueDesActes.sousSection",
        "path" : "FrHistoriqueDesActes.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrHistoriqueDesActes.entree",
        "path" : "FrHistoriqueDesActes.entree",
        "min" : 1
      },
      {
        "id" : "FrHistoriqueDesActes.entree.actes",
        "path" : "FrHistoriqueDesActes.entree.actes",
        "short" : "Entrée Acte",
        "definition" : "Entrée Acte",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe"
          }
        ]
      },
      {
        "id" : "FrHistoriqueDesActes.entree.references",
        "path" : "FrHistoriqueDesActes.entree.references",
        "short" : "Entrée Références externes",
        "definition" : "Entrée Références externes",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferencesExternes"
          }
        ]
      }
    ]
  }
}

```
