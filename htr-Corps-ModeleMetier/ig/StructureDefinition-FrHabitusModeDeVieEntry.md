# Habitus Mode de vie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitus Mode de vie**

## Logical Model: Habitus Mode de vie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVieEntry | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrHabitusModeDeVieEntry |

 
Entrée Habitus Mode de vie 

**Usages:**

* Use this Logical Model: [Habitus et modes de vie](StructureDefinition-FrHabitusModeDeVie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrHabitusModeDeVieEntry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrHabitusModeDeVieEntry.csv), [Excel](StructureDefinition-FrHabitusModeDeVieEntry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrHabitusModeDeVieEntry",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVieEntry",
  "version" : "0.1.0",
  "name" : "FrHabitusModeDeVieEntry",
  "title" : "Habitus Mode de vie",
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
  "description" : "Entrée Habitus Mode de vie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVieEntry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrHabitusModeDeVieEntry",
        "path" : "FrHabitusModeDeVieEntry",
        "short" : "Habitus Mode de vie",
        "definition" : "Entrée Habitus Mode de vie"
      },
      {
        "id" : "FrHabitusModeDeVieEntry.identifiant",
        "path" : "FrHabitusModeDeVieEntry.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrHabitusModeDeVieEntry.code",
        "path" : "FrHabitusModeDeVieEntry.code",
        "short" : "Code de l'entrée. Élément observé",
        "definition" : "Code de l'entrée. Élément observé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrHabitusModeDeVieEntry.description",
        "path" : "FrHabitusModeDeVieEntry.description",
        "short" : "Description narrative",
        "definition" : "Description narrative",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrHabitusModeDeVieEntry.statut",
        "path" : "FrHabitusModeDeVieEntry.statut",
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
        "id" : "FrHabitusModeDeVieEntry.horodatage",
        "path" : "FrHabitusModeDeVieEntry.horodatage",
        "short" : "Horodatage de l'entrée",
        "definition" : "Horodatage de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrHabitusModeDeVieEntry.resultat",
        "path" : "FrHabitusModeDeVieEntry.resultat",
        "short" : "Résultat de l’observation effectuée",
        "definition" : "Résultat de l’observation effectuée",
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
