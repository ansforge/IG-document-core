# Effets indesirables - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Effets indesirables**

## Logical Model: Effets indesirables 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetsIndesirables | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEffetsIndesirables |

 
Section Effets indesirables 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEffetsIndesirables)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEffetsIndesirables.csv), [Excel](StructureDefinition-FrEffetsIndesirables.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEffetsIndesirables",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetsIndesirables",
  "version" : "0.1.0",
  "name" : "FrEffetsIndesirables",
  "title" : "Effets indesirables",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetsIndesirables",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEffetsIndesirables",
        "path" : "FrEffetsIndesirables",
        "short" : "Effets indesirables",
        "definition" : "Section Effets indesirables"
      },
      {
        "id" : "FrEffetsIndesirables.titreSection",
        "path" : "FrEffetsIndesirables.titreSection",
        "min" : 1
      },
      {
        "id" : "FrEffetsIndesirables.sousSection",
        "path" : "FrEffetsIndesirables.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrEffetsIndesirables.entree",
        "path" : "FrEffetsIndesirables.entree",
        "min" : 1
      },
      {
        "id" : "FrEffetsIndesirables.entree.effetIndesirable",
        "path" : "FrEffetsIndesirables.entree.effetIndesirable",
        "short" : "Entrée Effet indesirable",
        "definition" : "Entrée Effet indesirable",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetIndesirable"
          }
        ]
      }
    ]
  }
}

```
