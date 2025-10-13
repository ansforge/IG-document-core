# Traitements - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitements**

## Logical Model: Traitements 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitements | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitements |

 
Section Traitements 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitements)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitements.csv), [Excel](StructureDefinition-FrTraitements.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitements",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitements",
  "version" : "0.1.0",
  "name" : "FrTraitements",
  "title" : "Traitements",
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
  "description" : "Section Traitements",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitements",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitements",
        "path" : "FrTraitements",
        "short" : "Traitements",
        "definition" : "Section Traitements"
      },
      {
        "id" : "FrTraitements.titreSection",
        "path" : "FrTraitements.titreSection",
        "min" : 1
      },
      {
        "id" : "FrTraitements.sousSection",
        "path" : "FrTraitements.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrTraitements.entree",
        "path" : "FrTraitements.entree",
        "min" : 1
      },
      {
        "id" : "FrTraitements.entree.traitements",
        "path" : "FrTraitements.entree.traitements",
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
