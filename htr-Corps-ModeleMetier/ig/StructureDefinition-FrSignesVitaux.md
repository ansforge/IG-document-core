# Signes vitaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Signes vitaux**

## Logical Model: Signes vitaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSignesVitaux | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrSignesVitaux |

 
Section Signes vitaux 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrSignesVitaux)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSignesVitaux.csv), [Excel](StructureDefinition-FrSignesVitaux.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSignesVitaux",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSignesVitaux",
  "version" : "0.1.0",
  "name" : "FrSignesVitaux",
  "title" : "Signes vitaux",
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
  "description" : "Section Signes vitaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSignesVitaux",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrSignesVitaux",
        "path" : "FrSignesVitaux",
        "short" : "Signes vitaux",
        "definition" : "Section Signes vitaux"
      },
      {
        "id" : "FrSignesVitaux.titreSection",
        "path" : "FrSignesVitaux.titreSection",
        "min" : 1
      },
      {
        "id" : "FrSignesVitaux.sousSection",
        "path" : "FrSignesVitaux.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrSignesVitaux.entree",
        "path" : "FrSignesVitaux.entree",
        "min" : 1
      },
      {
        "id" : "FrSignesVitaux.entree.signesVitauxEntry",
        "path" : "FrSignesVitaux.entree.signesVitauxEntry",
        "short" : "Entrée Signes vitaux",
        "definition" : "Entrée Signes vitaux",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSigneVital"
          }
        ]
      }
    ]
  }
}

```
