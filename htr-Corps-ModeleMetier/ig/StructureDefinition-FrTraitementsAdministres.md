# Traitements administrés - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitements administrés**

## Logical Model: Traitements administrés 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementsAdministres | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitementsAdministres |

 
Section Traitements administrés 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitementsAdministres)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitementsAdministres.csv), [Excel](StructureDefinition-FrTraitementsAdministres.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitementsAdministres",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementsAdministres",
  "version" : "0.1.0",
  "name" : "FrTraitementsAdministres",
  "title" : "Traitements administrés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementsAdministres",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitementsAdministres",
        "path" : "FrTraitementsAdministres",
        "short" : "Traitements administrés",
        "definition" : "Section Traitements administrés"
      },
      {
        "id" : "FrTraitementsAdministres.sousSection",
        "path" : "FrTraitementsAdministres.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrTraitementsAdministres.entree",
        "path" : "FrTraitementsAdministres.entree",
        "min" : 1
      },
      {
        "id" : "FrTraitementsAdministres.entree.traitementAdministre",
        "path" : "FrTraitementsAdministres.entree.traitementAdministre",
        "short" : "Entrée Traitement",
        "definition" : "Entrée Traitement",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement"
          }
        ]
      }
    ]
  }
}

```
