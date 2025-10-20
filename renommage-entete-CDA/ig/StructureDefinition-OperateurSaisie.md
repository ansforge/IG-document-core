# Modèle métier - Opérateur de saisie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Opérateur de saisie**

## Logical Model: Modèle métier - Opérateur de saisie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:OperateurSaisie |

 
Opérateur de saisie de la totalité ou d’une partie du contenu du document. 

**Usages:**

* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/OperateurSaisie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OperateurSaisie.csv), [Excel](StructureDefinition-OperateurSaisie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OperateurSaisie",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie",
  "version" : "0.1.0",
  "name" : "OperateurSaisie",
  "title" : "Modèle métier - Opérateur de saisie",
  "status" : "draft",
  "date" : "2025-10-20T12:52:41+00:00",
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
  "description" : "Opérateur de saisie de la totalité ou d'une partie du contenu du document.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OperateurSaisie",
        "path" : "OperateurSaisie",
        "short" : "Modèle métier - Opérateur de saisie",
        "definition" : "Opérateur de saisie de la totalité ou d'une partie du contenu du document.",
        "max" : "1"
      },
      {
        "id" : "OperateurSaisie.dateSaisie",
        "path" : "OperateurSaisie.dateSaisie",
        "short" : "Date de la saisie.",
        "definition" : "Date de la saisie.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "OperateurSaisie.operateurSaisie",
        "path" : "OperateurSaisie.operateurSaisie",
        "short" : "Opérateur de saisie",
        "definition" : "Opérateur de saisie",
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
