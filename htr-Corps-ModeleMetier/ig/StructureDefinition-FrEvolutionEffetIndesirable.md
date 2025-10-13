# Evolution effet indesirable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evolution effet indesirable**

## Logical Model: Evolution effet indesirable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvolutionEffetIndesirable | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrEvolutionEffetIndesirable |

 
Entrée Evolution effet indesirable 

**Usages:**

* Use this Logical Model: [Effet indesirable](StructureDefinition-FrEffetIndesirable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEvolutionEffetIndesirable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEvolutionEffetIndesirable.csv), [Excel](StructureDefinition-FrEvolutionEffetIndesirable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEvolutionEffetIndesirable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvolutionEffetIndesirable",
  "version" : "0.1.0",
  "name" : "FrEvolutionEffetIndesirable",
  "title" : "Evolution effet indesirable",
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
  "description" : "Entrée Evolution effet indesirable",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEvolutionEffetIndesirable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEvolutionEffetIndesirable",
        "path" : "FrEvolutionEffetIndesirable",
        "short" : "Evolution effet indesirable",
        "definition" : "Entrée Evolution effet indesirable"
      },
      {
        "id" : "FrEvolutionEffetIndesirable.code",
        "path" : "FrEvolutionEffetIndesirable.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrEvolutionEffetIndesirable.description",
        "path" : "FrEvolutionEffetIndesirable.description",
        "short" : "Partie narrative de l'entrée",
        "definition" : "Partie narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrEvolutionEffetIndesirable.statut",
        "path" : "FrEvolutionEffetIndesirable.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrEvolutionEffetIndesirable.evolution",
        "path" : "FrEvolutionEffetIndesirable.evolution",
        "short" : "Evolution",
        "definition" : "Evolution",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
