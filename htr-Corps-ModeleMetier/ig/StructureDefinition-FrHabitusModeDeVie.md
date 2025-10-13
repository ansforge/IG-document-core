# Habitus et modes de vie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitus et modes de vie**

## Logical Model: Habitus et modes de vie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVie | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrHabitusModeDeVie |

 
Section Habitus et modes de vie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrHabitusModeDeVie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrHabitusModeDeVie.csv), [Excel](StructureDefinition-FrHabitusModeDeVie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrHabitusModeDeVie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVie",
  "version" : "0.1.0",
  "name" : "FrHabitusModeDeVie",
  "title" : "Habitus et modes de vie",
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
  "description" : "Section Habitus et modes de vie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrHabitusModeDeVie",
        "path" : "FrHabitusModeDeVie",
        "short" : "Habitus et modes de vie",
        "definition" : "Section Habitus et modes de vie"
      },
      {
        "id" : "FrHabitusModeDeVie.titreSection",
        "path" : "FrHabitusModeDeVie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrHabitusModeDeVie.sousSection",
        "path" : "FrHabitusModeDeVie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrHabitusModeDeVie.entree.habitusModeDeVieEntry",
        "path" : "FrHabitusModeDeVie.entree.habitusModeDeVieEntry",
        "short" : "Entrée Habitus, Mode de vie",
        "definition" : "Entrée Habitus, Mode de vie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVieEntry"
          }
        ]
      }
    ]
  }
}

```
